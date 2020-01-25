# vimrc

### Linux
`curl -o ~/.vimrc https://raw.githubusercontent.com/andylytical/vimrc/master/vimrc`

### Windows (nvim) (powershell):
```powershell
mkdir $env:LOCALAPPDATA\nvim -Force
Invoke-WebRequest  https://raw.githubusercontent.com/andylytical/vimrc/master/vimrc -outfile $env:LOCALAPPDATA\nvim\init.vim
```

NOTE: Remove vimplug lines for nvim on windows
