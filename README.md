Material Square
===

Material Square Dark TP (this picture is out of date)
---

![Material Square Dark TP](https://raw.githubusercontent.com/joshua-kent/material-square-polybar/media/dark-tp-edit.png)


Dependencies
---

* Polybar

Fonts:

* Material Icons font
* Noto Sans fonts
* Awesome Fonts 5

How to install
---

Download repository
```bash
git clone https://github.com/joshua-kent/material-square-polybar.git
mv material-square-polybar material-square.d
cp material-square.d ~/.config/polybar
```

### Add in i3 configuration (~/.config/i3/config):

For light theme
```bash
exec sh ~/.config/polybar/material-square.d/launch.sh light &
```

For light and transparent theme
```bash
exec sh ~/.config/polybar/material-square.d/launch.sh light-tp &
```

For dark theme
```bash
exec sh ~/.config/polybar/material-square.d/launch.sh dark &
```

For dark and transparent theme
```bash
exec sh ~/.config/polybar/material-square.d/launch.sh dark-tp &
```

Other notices
---

This is a personal project that has specifically been developed to be used with i3 and a very specific suite of software. This means that you may have to modify the script to make it work for you.
