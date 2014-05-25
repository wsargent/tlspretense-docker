# TLSPretense

http://isecpartners.github.io/tlspretense/doc/general_setup_rdoc.html

http://isecpartners.github.io/tlspretense/doc/linux_setup_rdoc.html

Install Homebrew:

```
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
```

```
brew tap phinze/homebrew-cask
brew install brew-cask
brew cask install virtualbox
brew cask install vagrant
```

```
vagrant up
vagrant ssh
```

```
chmod +x network.sh
./network.sh
```

Now set up the IP address and network address

Address: 192.168.50.168
Gateway:
Subnet mask:

https://developer.apple.com/library/mac/documentation/Darwin/Reference/Manpages/man8/networksetup.8.html

```
sudo networksetup -setmanual networkservice 192.168.50.168 255.255.255.0 192.168.50.1
```

Now test that you can still get to the network.

```
tlspretense init myproject && cd myproject
```

```
tlspretense run
```
