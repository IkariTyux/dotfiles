# Installation

First install packer

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Copy all files in **~/.config**

```
cp -R nvim ~/.config/nvim
```

Then inside **lua/shinji/pakcer.lua** do a ":so" and save.
After that type ":PackerSync"; it will sync packer with the file and ainstall all plugins.

Restart nvim and voilà!

![Neovim](screen.png)

