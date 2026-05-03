# caleb funkin Project Context

This project is the source code for **caleb funkin**, a rhythm game built using the **Haxe** programming language and the **HaxeFlixel** game engine.

## Project Overview

- **Core Technologies:** Haxe, HaxeFlixel, Lime, OpenFL.
- **Build System:** Uses Lime with a Haxe-based project configuration (`project.hxp`) instead of the traditional `project.xml`.
- **Target Platforms:** Windows, macOS, Linux, Android, iOS, and HTML5.
- **Architecture:** 
    - `source/`: Contains the Haxe source code.
    - `assets/`: Contains game assets (handled via a git submodule to `funkin.assets`).
    - `templates/`: Custom templates for the build process.
    - `scripts/`: Various helper scripts for asset optimization and building.

## Building and Running

### Prerequisites
- Haxe (latest version recommended)
- Git
- `hmm` (Haxe Mod Manager): `haxelib install hmm && haxelib run hmm setup`

### Initial Setup
1. Clone the repository and initialize submodules:
   ```bash
   git clone https://github.com/FunkinCrew/funkin.git
   cd funkin
   git submodule update --init --recursive
   ```
2. Install dependencies:
   ```bash
   hmm install
   ```
3. Setup Lime:
   ```bash
   haxelib run lime setup
   ```

### Common Commands
- **Test on Desktop:** `lime test windows` (or `mac`/`linux`)
- **Test on HTML5:** `lime test html5`
- **Build only:** `lime build <platform>`
- **Debug Mode:** Append `-debug` to any build/test command (e.g., `lime test windows -debug`).
- **Clean Build:** `lime clean <platform>`

### Build Flags
Common flags used with `lime` commands:
- `-debug`: Enables debug features, asset redirection, and the VSCode debug server.
- `-DGITHUB_BUILD`: Enables in-game debug functions without full debug mode overhead.
- `-DREDIRECT_ASSETS_FOLDER`: Loads assets directly from the `assets/` folder instead of the export folder.

## Development Conventions

### Branching Strategy
- `develop`: Base branch for game code changes (`.hx` files) and general features.
- `main`: Base branch for documentation (`.md`) and GitHub workflows (`.yml`).
- **PRs:** Do not submit PRs from your fork's `main` branch. Create a feature branch instead.

### Code Style
- **Formatting:** Handled by Haxe Formatter (`hxformat.json`).
- **Linting:** Handled by Haxe Checkstyle (`checkstyle.json`).
- **Comments:** Keep comments meaningful and concise. Avoid self-explanatory comments. Use Javadoc-style for functions.
- **DCE:** Dead Code Elimination is set to `no` to support HScript modding.

### Modding
- The game uses the **Polymod** library for modding.
- Logic is often exposed to **HScript** (`.hscript` files) to allow runtime modifications.

## Key Files
- `project.hxp`: The primary project configuration and build logic.
- `hmm.json`: List of Haxe library dependencies and their versions/sources.
- `source/Main.hx`: The entry point of the application.
- `source/funkin/import.hx`: Global imports used throughout the project.
- `CODESTYLE.md`: Detailed guide on code style and quality enforcement.
- `docs/COMPILING.md`: Exhaustive guide for setting up the build environment on various platforms.
