#![deny(missing_docs)]
//! A Sudoku game.

// LIB IMPORTS
use glutin_window::GlutinWindow;
use opengl_graphics::{Filter, GlGraphics, GlyphCache, OpenGL, TextureSettings};
use piston::event_loop::{EventSettings, Events};
use piston::{EventLoop, RenderEvent, WindowSettings};

// LOCAL IMPORTS
pub use crate::gameboard::Gameboard;
pub use crate::gameboard_controller::GameboardController;
pub use crate::gameboard_view::{GameboardView, GameboardViewSettings};

mod gameboard;
mod gameboard_controller;
mod gameboard_view;

fn main() {
    let opengl = OpenGL::V3_2;

    let settings = WindowSettings::new("Sudoku", (430, 420))
        .exit_on_esc(true)
        // tells the window backend which OpenGL version to use:
        .graphics_api(opengl)
        .vsync(true);

    let mut window: GlutinWindow = settings.build().expect("Could not create window");

    let mut events = Events::new(
        EventSettings::new()
            // This setting tells the event loop to not bother updating at all, and render only when user input is received.
            .lazy(true),
    );

    // The gl object stores shaders and buffers that the OpenGL backend for Piston-Graphics needs to talk with the GPU.
    let mut gl = GlGraphics::new(opengl);

    let gameboard = Gameboard::load_sdm("static/puzzle.sdm");
    let mut gameboard_controller = GameboardController::new(gameboard);
    let gameboard_view_settings = GameboardViewSettings::new();
    let gameboard_view = GameboardView::new(gameboard_view_settings);

    // loading the game font
    let texture_settings = TextureSettings::new().filter(Filter::Nearest);
    let ref mut glyphs = GlyphCache::new("assets/FiraSans-Regular.ttf", (), texture_settings)
        .expect("Could not load font");

    // creates an event loop
    while let Some(e) = events.next(&mut window) {
        // passes events to the controller.
        gameboard_controller.event(
            gameboard_view.settings.position,
            gameboard_view.settings.size,
            &e,
        );

        if let Some(args) = e.render_args() {
            gl.draw(args.viewport(), |c, g| {
                use graphics::clear;

                clear([1.0; 4], g);
                // renders the gameboard.
                gameboard_view.draw(&gameboard_controller, glyphs, &c, g);
            });
        }
    }
}
