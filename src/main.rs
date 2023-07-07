use anyhow::Result;
use z80asmparse::ast::Statement;
use std::path::{Path, PathBuf};
use std::fs::File;
use std::io::BufWriter;
// Reads text from stdin from https://github.com/SomeProgrammerGuy/Manic-Miner-Source-Code/blob/master/ManicMiner.asm
// and dumps out a png file containing sprite data.

fn main() -> Result<()> {
    let text = std::fs::read_to_string(PathBuf::from("miner.asm"))?;
    let program = z80asmparse::ast::parse(&text)?;

//    println!("{:?}", program);

    let mut stmt_iter = program.statements.iter().peekable();
    let mut all_sprites = Vec::new();
    loop {
        let stmt = stmt_iter.peek();
        if let Some(stmt) = stmt {
            match stmt.label {
                Some("CentralCavernData") |
                Some("TheColdRoomData") |
                Some("TheMenagerieData") |
                Some("AbandonedUraniumWorkingsData") |
                Some("EugenesLairData") |
                Some("ProcessingPlantData") |
                Some("TheVatData") |
                Some("MinerWillyMeetsTheKongBeastData") |
                Some("WackyAmoebatronsData") |
                Some("TheEndorianForestData") |
                Some("AttackOfTheMutantTelephonesData") |
                Some("ReturnOfTheAlienKongBeastData") |
                Some("OreRefineryData") |
                Some("SkylabLandingBayData") |
                Some("TheBankData") |
                Some("TheSixteenthCavernData") |
                Some("TheWarehouseData") |
                Some("AmoebatronsRevengeData") |
                Some("SolarPowerGeneratorData") |
                Some("TheFinalBarrierData") => {
                    let label = stmt.label.unwrap();
                    println!("Cavern label: {}", label);
                    let mut cavern = process_cavern(&mut stmt_iter)?;
                    println!("Cavern {} has {} sprites", label, cavern.sprites.len());
                    all_sprites.append(&mut cavern.sprites);
                    println!("All sprites len={}", all_sprites.len());
                },
                Some(other) => {
                    println!("Other label: {}", other);
                },
                None => {}
            }
        } else {
            break;
        }
        stmt_iter.next();
    }

    write_rgba_png_spritemap(all_sprites, 16, "/tmp/sprites.png")?;


    Ok(())
}

struct Cavern {
    sprites: Vec<Vec<Vec<u8>>>
}

fn process_cavern<'a, I>(iter: &mut I) -> Result<Cavern>
where
    I: DoubleEndedIterator<Item = &'a Statement<'a>>
{
    // Read 16 DH operations defining the map data.
    let map_data = read_ops(iter, "DH", 16);
    println!("Got {} lines of map data", map_data.len());
    let _ops = read_ops(iter, "DEFM", 1);
//    let map_name = ops.first();
    let mut sprites = Vec::with_capacity(8);
    // Read 8 tile sprites. Each starts with a DB operation defining color information
    // followed by 8 DG operations containing pixel bitmask data.
    for _ in 0..8 {
        // Get color data
        let ops = read_ops(iter, "DB", 1);
        let color_data = ops.first().unwrap();
        let bitmask = read_ops(iter, "DG", 8);

        let sprite = read_sprite(&color_data[1..], bitmask)?;
        sprites.push(sprite);
        // let path = format!("/tmp/{}_{}.png", cavern_label, i);
        // write_rgba_png(&sprite, &path)?;
        // println!("Wrote {}", path);

    }

    Ok(Cavern{ sprites })

}

// Advance the iterator until the first operation of the given instruction type is
// found. Read n such operations, and return a vec of the parameter values.
fn read_ops<'a, I>(iter: &mut I, op_name: &str, count: usize) -> Vec<&'a str>
where I: Iterator<Item = &'a Statement<'a>> {
    let expected_op_name = op_name.to_ascii_lowercase();
    let mut values = Vec::with_capacity(count);

    let has_expected_name = |stmt: &Statement| -> bool {
        stmt.operation_name().unwrap_or("").to_ascii_lowercase().eq(&expected_op_name)
    };

    for stmt in iter {
        if has_expected_name(stmt) {
            let value = stmt.operation.as_ref().unwrap().first_param_as_str();
            if let Some(value) = value {
                values.push(value);
            }
        }
        if values.len() == count {
            break;
        }
    }
    values
}

fn write_rgba_png_spritemap<P: AsRef<Path>>(sprites: Vec<Vec<Vec<u8>>>, columns: usize, path: P) -> Result<()> {
    let file = File::create(path)?;
    let w = &mut BufWriter::new(file);

    println!("Got {} sprites with {} columns", sprites.len(), columns);

    // Fixme - hardcoded assumption that eash sprite is 8x8
    let width = 8 * columns;
    let rows = (sprites.len() / columns) + 1;
    let height  = 8 * rows;

    let mut encoder = png::Encoder::new(w, width as u32, height as u32);
    encoder.set_color(png::ColorType::Rgba);
    encoder.set_depth(png::BitDepth::Eight);
    let mut writer = encoder.write_header()?;

    let mut merged = Vec::with_capacity(width * height * 4);

    for pixel_row in 0..height {
        for pixel_col in 0..width {
            let block_col = pixel_col / 8;
            let block_row = pixel_row / 8;
            let sprite_num = (block_row * columns) + block_col;

            let sprite_row = pixel_row % 8;
            let sprite_col = pixel_col % 8;

            if sprite_num < sprites.len() {
                //println!("[{},{},{}]", sprite_num, sprite_row, sprite_col);
                merged.push(sprites[sprite_num][sprite_row][sprite_col*4]);
                merged.push(sprites[sprite_num][sprite_row][sprite_col*4 + 1]);
                merged.push(sprites[sprite_num][sprite_row][sprite_col*4 + 2]);
                merged.push(sprites[sprite_num][sprite_row][sprite_col*4 + 3]);
            }
        }
    }

    let expected_count = width * height * 4;

    merged.resize(expected_count, 0);

    writer.write_image_data(&merged)?;

    Ok(())
}

// Reads a sprite that's formatted like this:
// DB $42
// DG ########
// DG ########
// DG ##-##-##
// DG -##-###-
// DG ##---#-#
// DG -#------
// DG --------
// DG --------
// The first line is the attributes line, which encodes color of the sprite:
//   0bpppiii
//     b: 1=bright, 0=not bright
//     ppp: the paper (background) color index 0-7
//     iii: the ink (foreground) color index 0-7
// It's followed by a grid of 8x8 pixels: -=paper, #=ink
//
// Return value is an array of 8 lines of rgba data
// Each line of rgba data contains 8*4 bytes of color data
fn read_sprite<'a>(color: &'a str, bitmasks: Vec<&'a str>) -> Result<Vec<Vec<u8>>>
{
    let mut bitmap = Vec::with_capacity(8);

    // The first line has color information.
    let color = SpectrumColor::try_from(color)?;

    // Followed by 8 dg instructions containing bitmap data.
    for bitmask in bitmasks {
        let mut inner = Vec::with_capacity(8 * 4);
        for char in bitmask.chars() {
            let rgba = match char {
                '-' => Some(color.paper_rgba()),
                '#' => Some(color.ink_rgba()),
                _ => None
            };

            if let Some(mut rgba) = rgba {
                inner.append(&mut rgba);
            }
        }
        bitmap.push(inner);
    }

    Ok(bitmap)
}

#[derive(Debug)]
struct SpectrumColor {
    // The ink color index 0..7
    ink: u8,
    // The paper color index 0..7
    paper: u8,
    // The bright flag
    bright: bool
}

impl SpectrumColor {
    // Converts a color into an rgba color value
    fn to_rgba(value: &u8, bright: &bool) -> Vec<u8> {
        let code = if *bright {
            0xff
        } else {
            0xee
        };

        let mut red = 0;
        let mut green = 0;
        let mut blue = 0;
        let alpha = 255;

        if (value & 0b010) != 0 {
            red = code;
        }
        if (value & 0b100) != 0 {
            green = code;
        }
        if (value & 1) != 0 {
            blue = code;
        }
        // TODO: don't create this over and over
        vec![red, green, blue, alpha]

    }

    fn ink_rgba(&self) -> Vec<u8> {
        Self::to_rgba(&self.ink, &self.bright)
    }

    fn paper_rgba(&self) -> Vec<u8> {
        Self::to_rgba(&self.paper, &self.bright)
    }

}


impl TryFrom<&str> for SpectrumColor {
    type Error = anyhow::Error;

    fn try_from(s: &str) -> Result<Self> {
        //println!("Spectrum color from {}", s);
        let value = i64::from_str_radix(s, 16)?;
        let ink : u8 = (value & 0b111).try_into()?;
        let paper : u8 = ((value >> 3) & 0b111).try_into()?;
        let bright = ((value >> 6) & 1) == 1;

        Ok(SpectrumColor { ink, paper, bright })
    }
}

impl TryFrom<&String> for SpectrumColor {
    type Error = anyhow::Error;

    fn try_from(s: &String) -> Result<Self> {
        SpectrumColor::try_from(s.as_str())
    }
}
