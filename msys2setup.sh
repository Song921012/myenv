# msys2 shell
pacman -Syu
pacman -S zsh
# then move msys2zshrc to .zsrc  vpnon
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

pacman -S mingw-w64-x86_64-toolchain
#pacman -S mingw-w64-clang-x86_64-toolchain
pacman -S mingw-w64-x86_64-clang
pacman -S mingw-w64-x86_64-cmake
pacman -S mingw-w64-x86_64-ninja
pacman -S mingw-w64-x86_64-eigen3 mingw-w64-x86_64-ctags mingw-w64-x86_64-gnuplot mingw-w64-x86_64-graphviz mingw-w64-x86_64-inkscape mingw-w64-x86_64-pkgconf mingw-w64-x86_64-metis mingw-w64-x86_64-msmpi mingw-w64-x86_64-gsl mingw-w64-x86_64-pugixml mingw-w64-x86_64-pdf2svg mingw-w64-x86_64-suitesparse mingw-w64-x86_64-fontconfig mingw-w64-x86_64-harfbuzz mingw-w64-x86_64-fribidi mingw-w64-x86_64-freetype mingw-w64-x86_64-libpng mingw-w64-x86_64-libtiff mingw-w64-x86_64-libjpeg-turbo mingw-w64-x86_64-gdal mingw-w64-x86_64-udunits mingw-w64-x86_64-swig mingw-w64-x86_64-cairo