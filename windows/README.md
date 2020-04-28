# vimrc - Config for Windows

via PowerShell ...
```powershell
Invoke-WebRequest https://raw.githubusercontent.com/andylytical/vimrc/master/vimrc.part -outfile $env:USERPROFILE\_vimrc
```

#### Solarized Colorscheme:
```powershell
mkdir -path $env:USERPROFILE\vimfiles\colors -Force
Invoke-WebRequest https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim -outfile $env:USERPROFILE\vimfiles\colors\solarized.vim
Invoke-WebRequest -UseBasicParsing https://raw.githubusercontent.com/andylytical/vimrc/master/windows/solarized.part | Add-Content -NoNewLine -Path $env:USERPROFILE\_vimrc
```
