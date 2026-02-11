# FlashClip
 
[![Downloads](https://img.shields.io/github/downloads/srikat/FlashClip/total.svg)](https://github.com/srikat/FlashClip/releases/latest)
[![Version](https://img.shields.io/github/v/release/srikat/FlashClip)](https://github.com/srikat/FlashClip/releases/latest)
 
<img align="left" width="128" height="128" src="docs/icon_readme.png" alt="FlashClip Icon">

**FlashClip** allows you to keep the existing powerful features of FlowClip (which in turn is forked from Maccy) while leveraging two new **auto-highlight second item** and **copying/pasting with bare number keys** features. With FlashClip, you can easily perform batch operations.

FlashClip is a fork of [FlowClip](https://gityeop.github.io/FlowClip/) which itself is a fork [Maccy](https://maccy.app), keeping it lightweight, fast, and open-source.
<br clear="left"/>

## ✨ Key Features

### 🚀 Queue Clipboard (New!)
Copy multiple items one after another and paste them sequentially or all at once.

- **Batch Copy**: Copy text or images multiple times to build a queue.
- **Sequential Paste**: Paste items in the order they were queued (FIFO).
- **Custom Separators**: When pasting all items, choose to separate them with a space, new line, comma, or any custom character.
- **Visual Queue**: View and manage your queued items in a dedicated floating window.
- **Auto-Highlight Second Item**: FlashClip automatically highlights the second item in the clipboard history, since that is what most users are likely to want to paste from the clipboard history.
- **Copy/Paste with Bare Number Keys**: FlashClip allows you to copy/paste items using just the number keys, without having to press a modifier key like Command.

> [!IMPORTANT]
> **To use Queue Clipboard:** You must grant **Accessibility permissions** to FlashClip in System Settings. Please **restart the app** after granting permission.

### Core Features (inherited from Maccy)
- Lightweight & Fast
- Keyboard-first navigation
- Secure & Private
- Native UI (macOS standard)

## Install

### GitHub Releases
Download the latest version from the [Releases page](https://github.com/srikat/FlashClip/releases/latest).

### Homebrew
```sh
brew tap srikat/flashclip
brew install --cask flashclip
```

## Usage

1. **General**: <kbd>SHIFT (⇧)</kbd> + <kbd>COMMAND (⌘)</kbd> + <kbd>C</kbd> (configurable) to pop up FlashClip.
2. **Queue Mode**: 
   - Toggle Queue Window: <kbd>OPTION (⌥)</kbd> + <kbd>SHIFT (⇧)</kbd> + <kbd>V</kbd>
   - Copy items normally using <kbd>COMMAND (⌘)</kbd> + <kbd>C</kbd> while Queue Mode is active.
   - Use the Queue Window to manage or clear items.
   
3. **Select & Paste**:
   - Type to search.
   - <kbd>ENTER</kbd> to copy.
   - <kbd>OPTION (⌥)</kbd> + <kbd>ENTER</kbd> to paste.

For advanced usage and configuration, please refer to the application preferences.

## License

MIT License.

Based on [Maccy](https://github.com/p0deje/Maccy) by Alex Rodionov.
Copyright (c) 2026 Sang Yeop Lim (FlashClip)
Copyright (c) 2018 Alex Rodionov (Maccy)
