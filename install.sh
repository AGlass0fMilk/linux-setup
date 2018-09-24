mkdir ~/.emacs.d/themes
mkdir ~/.emacs.d/modes
cp ./pomegranate-explosion-theme.el ~/.emacs.d/themes/
cp ./intel-hex-mode/intel-hex-mode.el ~/.emacs.d/modes/

echo "(add-to-list 'custom-theme-load-path \"~/.emacs.d/themes\")" >> ~/.emacs
echo "(load-theme 'pomegranate-explosion t)" >> ~/.emacs
echo "(load-file \"~/.emacs.d/modes/intel-hex-mode.el\")" >> ~/.emacs

apt-get install git
git config credential.helper store
git config --global credential.helper "cache --timeout 43200"
