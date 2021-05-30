<!--Neovim images-->
![Plugins](https://user-images.githubusercontent.com/17545760/118346342-5c69d800-b500-11eb-9cb3-ddfde45480c7.png)
![Settings](https://user-images.githubusercontent.com/17545760/118346343-5e339b80-b500-11eb-95ee-43ba4714fdb4.png)

# Neovim configuration

This repository was created to share my neovim configuration.

## Installation

To use this configuration, first download some dependencies:

Install dependencies depending on your operating system.

NodeJs and npm 
```bash
sudo pacman -S nodejs npm
```

Python and python-pip
```bash
sudo pacman -S python python-pip
```

Download neovim packages
```bash
sudo pacman -S neovim xsel
```

Install python for neovim
```bash
pip install pynvim
```

Go to your settings folder.

```bash
cd ~/.config/
```
Now, clone the repository.

```bash
git clone https://github.com/edwz-dev/nvim 
```

Install plugin manager here [vim-plug](https://www.google.com/search?q=vim-plug&oq=vim-plug&aqs=chrome..69i57j0l6j69i60.2592j0j4&sourceid=chrome&ie=UTF-8).

Then, execute neovim in nvim folder.

```bash
nvim init.vim
```

When you have installed the vim-plug, execute.
`:PlugInstall`

Wait for the plugins to download and install and execute.
`:q!`

Configuration completed, enjoy!

Plugin keybindings:

| Key | Action |
| ------------- |:-------------:|
| col 3 is      | right-aligned |
| col 2 is      | centered      |
| zebra stripes | are neat      |

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
