## pass for macOS

A tiny macOS app that helps you quickly grab a password from your existing password store and paste it where you need it. It should work on MacOSX 10.5 Leopard and later but has thus far only been tested on macOS 10.15.

### What is pass and why this wrapper?

pass is the CLI interface for PasswordStore, a Python/GnuPG based password manager.

https://www.passwordstore.org/

It usually is used on the command line directly but it may be inconvenient to switch context to a terminal. Thus this script has been created so the user can call it using the Spotlight search and quickly interact with it without switching context away from the application currently in focus too much.

### What it does
- **Asks for a password name**: When you open the app, it shows a small box asking which password you want.
- **Copies it for you**: It fetches that password and copies it to your clipboard.
- **Puts you back where you were**: After it’s done, it returns focus to the app you were using (so you can paste right away).

### What you need first
- **The `pass` password manager** set up on your Mac. If you don’t have it, install it first (for example with Homebrew) and make sure your passwords are available there.

### Install
You have two simple options:

1) **Run the installer**
   - Open Terminal in this folder and run:
   ```bash
   ./install.sh
   ```
   This puts `pass.app` into your Applications folder.

2) **Manual**
   - Drag the `pass.app` folder into your Applications folder.

### Use
- Open Spotlight (Cmd+Space), type “pass”, and press Enter.
- Type the name of the password you want and click “Get Password”.
- Paste where you need it.

Notes:
- If the name isn’t found, the app will tell you.
- The password is copied to your clipboard. Depending on your `pass` setup, it may clear from the clipboard automatically after a short time.

### Uninstall
- Delete `pass.app` from your Applications folder.

### Privacy and safety
- This app doesn’t store any passwords itself. It only asks `pass` for the entry you request and copies it to your clipboard.
- It’s designed to stay out of the Dock and menu bar and only appear when needed.


