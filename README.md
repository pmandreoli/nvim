# Run Packer
In a nvim session:
``` vim
:PackerInstall
```
# Treesitter setup
Wait for Treesitter to download and compile the parsers, It should happen automatically the first time you open the nvim session.
If it doesn't start automatically force it with:
```
:TSupdate
```
# Install Language servers 
### C/C++
``` bash
sudo pamac install llvm
```
> MacOS: 
you might have to add `export PATH=$PATH:/usr/local/opt/llvm/bin/` to your shell config file.

### python
``` bash
npm i -g pyright
```
### bash
``` bash
npm i -g bash-language-server
```
### Docker
``` bash
npm i -g docker-language-server-nodejs
```
### R 
in an R session:
``` r
install.packages('languageserver')
```
### Lua
``` bash
git submodule update --init --recursive
cd 3rd/luamake
./compile/install.sh
cd ../..
./3rd/luamake/luamake rebuild
```

# Telescope speed improvement
- Install [fd](https://github.com/sharkdp/fd) for better file finding 
- Install  [ripgrep](https://github.com/BurntSushi/ripgrep) to enable live_grep functionality
``` bash
pamac install fd ripgrep
```

