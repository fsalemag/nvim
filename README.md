# NVIM
Config files for neovim.

### Instalation
1. Run vim-plug to install pluggin manager
2. Open vim and :PlugInstall


#### Custom commands
1. ctrl+c n - Opens ipython window to the right of the current window, printing the :terminal job id at the bottom, that must be inserted in the slime-vim (ctrl+c ctrl+c) configuration, in order to make it interactive
2. Space  r - Runs current python script (needs enter to run, for the case where arguments are necessary)
3. Space  p - Runs current python script in case it belongs to a package, and the script is a direct child of the main package (needs enter to run)
