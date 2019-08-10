# Simplify-Trello for macOS

Trello is a great app for organizing about anything. Some people find its UI a bit distractive, however. `Simplify-Trello` adds a few lines of `CSS` into the **Trello macOS app** to make it as simple as possible.

## Installation

`Simplify-Trello` works by modifying the source code of the Trello app. **Every time the app is updated, you'll need to re-run this script.**

For `Simplify-Trello` to work, you'll need `asar` first.
```sh
npm install -g asar
```

Clone `Simplify-Trello` and run the script.
```sh
git clone https://github.com/brammahh/Simplify-Trello
cd Simplify-Trello
./simplify.sh
```
You'll need to enter your password, as `/Applications/Trello.app` is write-protected.

## Comparison

#### Simplified Trello app
![Simplified Trello screenshot](/resources/simplified-trello.png)

#### Original Trello app

![Simplified Trello screenshot](/resources/original-trello.png)


## Customization

### Current modifications

- `Recently Viewed` boards are hidden.
- The `Create new board` buttons are hidden.
- The left navigation menu is hidden.
- The three buttons next to a team name are hidden.

### Further customization

If you'd like to customize which elements to leave out, feel free to comment things out in `resources/modifications.css`.

The native macOS Trello app is based on Electron. It essentially just wraps [trello.com](https://trello.com) in a native app. If you'd like to further customize your Trello client, surf to the [Trello web app](https://trello.com) and use `Inspect Element` to find the `CSS` classname of the elements you'd like to modify. You can then customize these elements in the `resources/modifications.css` file.
