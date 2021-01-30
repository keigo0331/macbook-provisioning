## MacbookProvisioning

1. Xcode
```
sudo xcodebuild -license

xcode-select --install
```

2. Homebrew
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor

brew update
```

3. Automation by ansible
```
brew install python

brew install ansible

HOMEBREW_CASK_OPTS="--appdir=/Applications" ansible-playbook -i hosts -vv localhost.yml
```

ref) https://t-wada.hatenablog.jp/entry/mac-provisioning-by-ansible
