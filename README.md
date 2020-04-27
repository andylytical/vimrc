# vimrc

### Linux
`curl -o ~/.vimrc https://raw.githubusercontent.com/andylytical/vimrc/master/vimrc`

### Windows (powershell):
```powershell
Invoke-WebRequest https://raw.githubusercontent.com/andylytical/vimrc/master/vimrc -outfile $env:USERPROFILE\_vimrc
```
#### Solarized Colorscheme:
```
mkdir -path $env:USERPROFILE\vimfiles\colors -type directory -Force
Invoke-WebRequest https://raw.githubusercontent.com/andylytical/vimrc/master/vimrc -outfile $env:USERPROFILE\vimfiles\vimrc
Invoke-WebRequest https://raw.githubusercontent.com/andylytical/vimrc/master/win-gvimrc -outfile $env:USERPROFILE\vimfiles\gvimrc
Invoke-WebRequest https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim -outfile $env:USERPROFILE\vimfiles\colors\solarized.vim
```

NOTE: Remove vimplug lines on windows
