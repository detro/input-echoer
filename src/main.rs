use std::env;

const APP_NAME: &'static str = env!("CARGO_PKG_NAME");
const APP_VERSION: &'static str = env!("CARGO_PKG_VERSION");
const APP_DESCRIPTION: &'static str = env!("CARGO_PKG_DESCRIPTION");
const APP_AUTHORS: &'static str = env!("CARGO_PKG_AUTHORS");

fn main() {
    println!("-------------------------------------------------------------------------- ABOUT");
    println!("{}", APP_NAME);
    println!("{}", APP_VERSION);
    println!("{}", APP_DESCRIPTION);
    for author in APP_AUTHORS.split(':') {
        println!("{}", author)
    }
    println!("------------------------------------------------------------------------- /ABOUT");
    println!();

    println!("---------------------------------------------------------------------------- ENV");
    for (env_key, env_val) in env::vars() {
        println!("{}: {}", env_key, env_val)
    }
    println!("--------------------------------------------------------------------------- /ENV");
    println!();

    println!("--------------------------------------------------------------------------- ARGS");
    for (i, arg) in env::args().enumerate() {
        println!("{}: {}", i, arg)
    }
    println!("-------------------------------------------------------------------------- /ARGS");
    println!();
}
