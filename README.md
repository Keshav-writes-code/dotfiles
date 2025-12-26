# My Linux Rice

An Ultra Minimal Sub 500 MB Ram usage, 10 GB Disk space required Full on beautiful Desktop Environment

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/49853839-1899-4835-9fca-aeead26874ec" />
<img width="1920" height="1080" alt="2025-09-26-203121_1920x1080_scrot" src="https://github.com/user-attachments/assets/74b9a87d-373e-4a96-a4e5-8fd8ee712907" />

## How to Install

- on Fresh System
  in a fresh system which doesn't have chezmoi installed yet

  to clone eveything, run this command.

  ```sh
  sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply Keshav-writes-code
  ```

   to clone a speicific config, change the `[dir_name]` part in this command

  ```sh
  sh -c "$(curl -fsLS get.chezmoi.io)" -- init Keshav-writes-code && \
    chezmoi apply [dir_name] # example [dir_name] : ~/.config/nvim
  ```

- on System with Chezmoi already installed

```sh
chezmoi init --apply Keshav-writes-code
```

## Software Specs

| Domain                     | Tool                                               |
| -------------------------- | -------------------------------------------------- |
| OS                         | [AntiX Linux](https://antixlinux.com/)             |
| WM                         | [herbstluftwm](https://herbstluftwm.org/)          |
| Status Bar                 | [Polybar](https://polybar.github.io/)              |
| Auto Wallpapers            | [Variety](https://github.com/varietywalls/variety) |
| Visual Effects (Blur, etc) | [Picom](https://github.com/yshui/picom)            |
| Code Editor                | [Lazyvim](https://www.lazyvim.org/)                |
| Terminal                   | [Alacritty](https://alacritty.org/index.html)      |
| Shell                      | [Fish](https://fishshell.com/)                     |
| App Picker                 | [Rofi](https://davatorium.github.io/rofi/)         |

## Resource Usage

| Resource   | Usage   |
| ---------- | ------- |
| RAM        | ~520 MB |
| Disk Usage | ~10 GB  |

## My Hardware

| Resource    | Usage            |
| ----------- | ---------------- |
| RAM         | 12 GB            |
| CPU         | Intel i5-10400F  |
| GPU         | Nvidia GT 710    |
| Motherboard | Gigabyte H410 v2 |
| Monitor     | Gigabyte H410 v2 |
