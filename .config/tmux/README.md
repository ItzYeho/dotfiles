# The modular, feature rich tmux config

[![Demo with Asciinema](https://asciinema.org/a/JReppDntsDc6nGyEFs4AcrGut.svg)](https://asciinema.org/a/JReppDntsDc6nGyEFs4AcrGut)

This config is my attempt at a fully featured, modular tmux config that's pleasant
to customize and understand. This config uses no hard-coded paths and relies soley on
the freedesktop environmental variables (`$XDG_*`), or `$HOME` as a fallback, with similar
paths to the standard freedesktop layout.

This config was made for Linux systems in mind. It may work for Macs and Windows machines, but I cannot guarantee this.

## Features

Thank you to all the plugin devs for making the following possible:
- Fully modular with no hard coded paths
- Fast copying & opening of any content
- Nested session support
- Full FZF history search
- Smart session management
- Smart mouse support
- & more!

## Dependencies

- git
- a nerd font (I recommend [MesloLGS](https://github.com/romkatv/powerlevel10k/blob/master/font.md))
- python3
- fzf
- eza

## Setup & First Run

The first time you run tmux after installing this configuration may take some time.
This is automatically downloading all necessary plugins and binaries from GitHub.
Once it's finished, you'll automatically be dropped into a tmux session.

Unfortunately I have not been able to figure out a way to instantly open a session
and show the output of the downloads, so you'll have to sit tight and wait for the
blank screen to clear.

## Keybinds

This section will only show keybinds that are added as part of
this configuration. At any time, you may press `prefix + Space`,
and a menu with available keybinds will pop up.

Note the following:
- The prefix key is <kbd>Ctrl</kbd> + <kbd>Space</kbd>
- When <kbd>Meta</kbd> is mentioned, it usually means <kbd>Alt</kbd> or <kbd>Option</kbd>

### Pane Control

Keybind | Action | Source
------- | ------ | ------
<kbd>prefix</kbd> + (<kbd>h</kbd> / <kbd>Ctrl</kbd> + <kbd>h</kbd>) | Select pane to the left | tmux-pain-control
<kbd>Meta</kbd> + <kbd>h</kbd>/<kbd>←</kbd> | Select pane to the left | me
<kbd>prefix</kbd> + (<kbd>j</kbd> / <kbd>Ctrl</kbd> + <kbd>j</kbd>) | Select pane below | tmux-pain-control
<kbd>Meta</kbd> + <kbd>j</kbd>/<kbd>↓</kbd> | Select pane below | me
<kbd>prefix</kbd> + (<kbd>k</kbd> / <kbd>Ctrl</kbd> + <kbd>k</kbd>) | Select pane above | tmux-pain-control
<kbd>Meta</kbd> + <kbd>k</kbd>/<kbd>↑</kbd> | Select pane above | me
<kbd>prefix</kbd> + (<kbd>l</kbd> / <kbd>Ctrl</kbd> + <kbd>l</kbd>) | Select pane to the right | tmux-pain-control
<kbd>Meta</kbd> + <kbd>l</kbd>/<kbd>→</kbd> | Select pane to the right | me
<kbd>prefix</kbd> + <kbd>Shift</kbd> + <kbd>h</kbd> | Resize pane 2 cells to the left | tmux-pain-control
<kbd>prefix</kbd> + <kbd>Shift</kbd> + <kbd>j</kbd> | Resize pane 2 cells down | tmux-pain-control
<kbd>prefix</kbd> + <kbd>Shift</kbd> + <kbd>k</kbd> | Resize pane 2 cells up | tmux-pain-control
<kbd>prefix</kbd> + <kbd>Shift</kbd> + <kbd>l</kbd> | Resize pane 2 cells to the right | tmux-pain-control
<kbd>prefix</kbd> + <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>l</kbd>/<kbd>←</kbd> | Swap pane left | me
<kbd>prefix</kbd> + <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>j</kbd>/<kbd>↓</kbd>| Swap pane down | me
<kbd>prefix</kbd> + <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>k</kbd>/<kbd>↑</kbd> | Swap pane up | me
<kbd>prefix</kbd> + <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>l</kbd>/<kbd>→</kbd> | Swap pane right | me
<kbd>prefix</kbd> + <kbd>\|</kbd> | Split vertically | tmux-pain-control
<kbd>prefix</kbd> + <kbd>-</kbd> | Split horizontally | tmux-pain-control
<kbd>prefix</kbd> + <kbd>\\</kbd> | Split vertically to the left of all panes | tmux-pain-control
<kbd>prefix</kbd> + <kbd>_</kbd> | Split horizontally below all panes | tmux-pain-control
<kbd>prefix</kbd> + <kbd>*</kbd> | Force kill running program in the current pane | tmux-cowboy

### Session Management & Window Control

Keybind | Action | Source
------- | ------ | ------
<kbd>prefix</kbd> + <kbd>Shift</kbd> + <kbd>,</kbd> | Move window left | tmux-pain-control
<kbd>prefix</kbd> + <kbd>Shift</kbd> + <kbd>.</kbd> | Move window right | tmux-pain-control
<kbd>prefix</kbd> + <kbd>Meta</kbd> + <kbd>s</kbd> | Create a new nested session | me
<kbd>Meta</kbd> + <kbd>↑</kbd> | Jump one step deeper into a nested session | tmux-matryoshka
<kbd>Meta</kbd> + <kbd>↓</kbd> | Jump one step out of a nested session | tmux-matryoshka
<kbd>Meta</kbd> + <kbd>r</kbd> | Reset nested scope (go to outer most session) | tmux-matryoshka
<kbd>Meta</kbd> + <kbd>,</kbd> | Select previous window | me
<kbd>Meta</kbd> + <kbd>.</kbd> | Select next window | me
<kbd>prefix</kbd> + <kbd>Ctrl</kbd> + <kbd>t</kbd> | Open session manager | tmux-tea
<kbd>prefix</kbd> + <kbd>Ctrl</kbd> + <kbd>s</kbd> | Save session | tmux-resurrect
<kbd>prefix</kbd> + <kbd>Ctrl</kbd> + <kbd>r</kbd> | Restore session | tmux-resurrect

### Quick Copying

Keybind | Action | Source
------- | ------ | ------
<kbd>prefix</kbd> + <kbd>Tab</kbd> | Copy pane text (including history) with fzf | extrakto
<kbd>prefix</kbd> + <kbd>f</kbd> | Enter tmux-fingers copy mode | tmux-fingers
<kbd>prefix</kbd> + <kbd>F</kbd> | Enter tmux-fingers jump mode | tmux-fingers
<kbd>prefix</kbd> + <kbd>s</kbd> | Jump to on-screen text with easymotion | me + tmux-copy-toolkit
<kbd>prefix</kbd> + <kbd>Shift</kbd> + <kbd>s</kbd> | Copy two ends of on-screen text to clipboard with easymotion | tmux-copy-toolkit
<kbd>prefix</kbd> + <kbd>Shift</kbd> + <kbd>q</kbd> | tmux-fingers like quick-copy but with more generous patterns | tmux-copy-toolkit
<kbd>prefix</kbd> + <kbd>Shift</kbd> + <kbd>p</kbd> | Same as previous, but opens the entry | tmux-copy-toolkit
<kbd>prefix</kbd> + <kbd>Shift</kbd> + <kbd>w</kbd> | Qucik full-line copy with easymotion | tmux-copy-toolkit

#### tmux-fingers

Keybind | Action
------- | ------
`highlighted key` | Copy entry to clipboard and tmux buffer
<kbd>Ctrl</kbd> + `highlighted key` | Edit selected entry in `$EDITOR`
<kbd>Shift</kbd> + `highlighted key` | Paste selected entry
<kbd>Alt</kbd> + `highlighted key` | Open selected entry

### Copy Mode

Keybind | Action | Source
------- | ------ | ------
<kbd>o</kbd> | Open selected URI | tmux-open
<kbd>Ctrl</kbd> + <kbd>o</kbd> | Edit selected file in `$EDITOR` | tmux-open
<kbd>Shift</kbd> + <kbd>o</kbd> | Search selected text in Google | tmux-open
<kbd>Ctrl</kbd> + <kbd>v</kbd> | Toggle between line select and rectangle select | me
<kbd>s</kbd> | Jump to on-screen text with easymotion | tmux-copy-toolkit

### Screenshots, Logging & History

Keybind | Action | Source
------- | ------ | ------
<kbd>prefix</kbd> + <kbd>Meta</kbd> + <kbd>c</kbd> | Clear pane history | tmux-logging
<kbd>prefix</kbd> + <kbd>Shift</kbd> + <kbd>p</kbd> | Start/stop logging | tmux-logging
<kbd>prefix</kbd> + <kbd>Meta</kbd> + <kbd>p</kbd> | Take a screenshot | tmux-logging
<kbd>prefix</kbd> + <kbd>Ctrl</kbd> + <kbd>Meta</kbd> + <kbd>p</kbd> | Save pane history | tmux-logging
<kbd>prefix</kbd> + <kbd>/</kbd> | Search pane history with fzf | fuzzback

### Plugin Management

Keybind | Action | Source
------- | ------ | ------
<kbd>prefix</kbd> + <kbd>I</kbd> | Install plugins | tpm
<kbd>prefix</kbd> + <kbd>U</kbd> | Update plugins | tpm

## Plugins in use

### General

- [tpm](https://github.com/tmux-plugins/tpm) (tmux plugin manager)
- [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible) (sensible settings for everyone)
- [tmux-better-mouse-mode](https://github.com/nhdaly/tmux-better-mouse-mode) (improves the mouse on tmux)
- [tmux-mighty-scroll](https://github.com/noscript/tmux-mighty-scroll) (allows scrolling in programs like less)
- [tmux-logging](https://github.com/tmux-plugins/tmux-logging) (logging and screenshot capabilities for tmux)
- [tmux-which-key](https://github.com/alexwforsythe/tmux-which-key) (small menu showing available keybinds)

### Session Management
- [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect) (save & restore tmux sessions)
- [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum) (restore tmux sessions automatically)
- [tmux-tea](https://github.com/2KAbhishek/tmux-tea) (fast session manager with fzf and previews)
- [tmux-matryoshka](https://github.com/niqodea/tmux-matryoshka) (nested session management)

### Pane Control

- [tmux-cowboy](https://github.com/tmux-plugins/tmux-cowboy) (quickly terminate misbehaving processes)
- [tmux-pain-control](https://github.com/tmux-plugins/tmux-pain-control) (pane keybinds that just make sense)

### Theme

- [catppuccin](https://github.com/catppuccin/tmux) (status bar theme)
- [tmux-cpu](https://github.com/tmux-plugins/tmux-cpu) (cpu usage module for the status bar)

### Copy Mode

- [tmux-open](https://github.com/tmux-plugins/tmux-open) (open URIs in copy mode)
- [tmux-yank](https://github.com/tmux-plugins/tmux-yank) (copy to system clipboard in copy mode)

### Quick Copying

- [fuzzback](https://github.com/roosta/tmux-fuzzback) (jump back in history with FZF)
- [extrakto](https://github.com/laktak/extrakto) (search stuff to copy with FZF)
- [tmux-fingers](https://github.com/Morantron/tmux-fingers) (copy stuff very fast with pre-defined regex matchers)
- [tmux-copy-toolkit](https://github.com/CrispyConductor/tmux-copy-toolkit) (fast & precise copying of text on-screen with easymotion)

