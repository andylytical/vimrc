## Linux
Also works for [GitBash on Windows](https://gitforwindows.org/)
- `curl -o ~/.vimrc https://raw.githubusercontent.com/andylytical/vimrc/main/vimrc`

## Windows
Run all commands in PowerShell as normal user
- Download vimrc file
```powershell
Invoke-WebRequest https://raw.githubusercontent.com/andylytical/vimrc/main/vimrc -outfile $env:USERPROFILE\_vimrc
```
- Install Solarized Colorscheme
```powershell
mkdir -path $env:USERPROFILE\vimfiles\colors -Force
Invoke-WebRequest https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim -outfile $env:USERPROFILE\vimfiles\colors\solarized.vim
```

# Plug-In Docs and Tutorials
## VimPlug (plugin manager)
- [Vim-Plug](https://github.com/junegunn/vim-plug)
## 3rd Pary Plug-ins
- [rodjek/vim-puppet](https://github.com/rodjek/vim-puppet.git)
- [tpope/vim-commentary](https://github.com/tpope/vim-commentary.git)
- [tpope/vim-sensible](https://github.com/tpope/vim-sensible.git)
- [tpope/vim-surround](https://github.com/tpope/vim-surround.git)
  - [Vim Surround Plugin Tutorial](http://www.futurile.net/2016/03/19/vim-surround-plugin-tutorial/)
- [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline.git)
- [vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes.git)
- [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
- [Yggdroot/indentLine](https://github.com/Yggdroot/indentLine)

# See also
- http://stevelosh.com/blog/2010/09/coming-home-to-vim/
- https://www.arthurkoziel.com/setting-up-vim-for-yaml/
