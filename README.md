sudo xcodebuild -license
xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update
brew install python
brew install ansible
HOMEBREW_CASK_OPTS="--appdir=/Applications" ansible-playbook -i hosts -vv localhost.yml
https://t-wada.hatenablog.jp/entry/mac-provisioning-by-ansible