# Lab Boxen

To set up a new lab machine, check out the pre (and post) setup instructions [here](https://gist.github.com/techpeace/c93f9fb4b7483f5f8c41).

After running through the pre-boxen setup instructions, head on over to [the Boxen web interface](http://makersquare-lab-boxen.heroku.com) and run the command listed there under a terminal on the student account.

After boxen finishes doing its sweet, sweet thing, run through the post-boxen setup instructions (that I was too lazy to automate). Blammo! You've got yourself a new lab machine.

## Setting up new boxen

[Excellent blog post](http://garylarizza.com/blog/2013/02/15/puppet-plus-github-equals-laptop-love/)

### Initial machine set-up

* Create an account 'admin/Admin' on the machine with password 'TheMaker^2'
* Tie the Admin account with iTunes account matt+appleid@themakersquare.com/TheMaker^2
* Install any system updates (don't need iMovie, etc. updates)
* Install XCode
  * Install command-line tools
* Visit [the web interface](http://makersquare-lab-boxen.herokuapp.com) for the correct command to run in terminal

### Post boxen manual set-up

#### From the admin account

* `echo 'source /opt/boxen/env.sh' >> ~/.zshrc`
* Install oh-my-zsh
  * `curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh`
* `echo 'source /opt/boxen/env.sh' >> ~/.zshrc`
* Enable Remote Login
  * settings -> sharing
* Update iTerm2
* `sudo curl -o /etc/motd https://gist.github.com/techpeace/5745650/raw/a9c4ee12cba0d2f61f795dc4aa7344e451a54753/motd`
* Set Machine Name
  * scutil --set ComputerName "challenge-1"
  * scutil --set HostName "challenge-1"
  * scutil --set LocalHostName "challenge-1"
* Create a non-admin account 'student/MakerSquare Student' with password 'makersquare'
  * Set the account avatar to the MakerSquare GitHub org logo
* `sudo chown -R student:staff /opt/boxen`
* `sudo visudo`, then add this: `admin ALL=(ALL) NOPASSWD: ALL`
* Enable guest account

#### From the student acount

* Install oh-my-zsh
  * Install Menlo for powerline font - set it to 15pt
    * [regular](https://github.com/Lokaltog/powerline-fonts/raw/master/Menlo/Menlo%20Regular%20for%20Powerline.ttf)
    * [bold](https://github.com/Lokaltog/powerline-fonts/raw/master/Menlo/Menlo%20Bold%20for%20Powerline.ttf)
    * [italic](https://github.com/Lokaltog/powerline-fonts/raw/master/Menlo/Menlo%20Italic%20for%20Powerline.ttf)
    * [bold italic](https://github.com/Lokaltog/powerline-fonts/raw/master/Menlo/Menlo%20Bold%20Italic%20for%20Powerline.ttf)
  * change iterm2 theme to pastel dark
  * `curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh`
* `source /opt/boxen/env.sh`
* `curl -s https://gist.github.com/techpeace/c93f9fb4b7483f5f8c41/raw/post-boxen.sh > /tmp/post-install-boxen; bash /tmp/post-install-boxen`
* `source /opt/boxen/env.sh`
* `gem install homesick; homesick clone https://github.com/makersquare/dotfiles.git; homesick symlink dotfiles`
* Add home and code folders to Finder sidebar
* Enable screen inversion hotkey
  * settings -> keyboard -> keyboard shortcuts -> accessibility -> invert colors
* Set computer to sleep after 1 hour (except for challenge boxen)
  * settings -> energy saver
* Enable Dvorak
  * settings -> language -> input sources -> Dvorak
    * then keyboard shortcut
* Enable ctrl-zoom
  * settings -> accessibility -> zoom -> crl-zoom
* Enable Remote Management
  * settings -> sharing
  * Enable all permissions
* Enable assistive devices
  * settings -> accessibility
* Enable Remote Login
  * settings -> sharing
* Disable spotlight shortcut
* Change Alfred shortcut to command-space
  * change alfred theme to dark, hide hat
* Ensure SizeUp boots on load
  * Drop send up/send down shortcuts
  * Make up-arrow fullscreen
* Add Chrome, Mou, SublimeTExt, iTerm to Dock
* Configure Dropbox
  * dropbox@themakersquare.com/workhardplayhard
* Sync SSH keys via Dropbox

```console
rm -rf ~/.ssh
ln -s ~/Dropbox/System\ Files/ssh ~/.ssh
chmod 600 ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa.pub
```

* Sync SublimeText settings via Dropbox
  * `rm -rf ~/Library/Application\ Support/Sublime\ Text\ 2/Installed\ Packages; rm -rf ~/Library/Application\ Support/Sublime\ Text\ 2/Packages; rm -rf ~/Library/Application\ Support/Sublime\ Text\ 2/Pristine\ Packages;`
  * `ln -s ~/Dropbox/Library/Application\ Support/Sublime\ Text\ 2/Installed\ Packages ~/Library/Application\ Support/Sublime\ Text\ 2/Installed\ Packages; ln -s ~/Dropbox/Library/Application\ Support/Sublime\ Text\ 2/Pristine\ Packages ~/Library/Application\ Support/Sublime\ Text\ 2/Pristine\ Packages; ln -s ~/Dropbox/Library/Application\ Support/Sublime\ Text\ 2/Packages ~/Library/Application\ Support/Sublime\ Text\ 2/Packages`
* Set SublimeText as default editor:
  * `export EDITOR='subl -w'`
* `chmod go-w ~/Dropbox/bin`
* Set up automatic updates for Chrome
  * also sign in to a Chrome account so we can sync bookmarks/apps
* `bundle config --global path vendor/bundle` - again, don't know why
* try out reddit-on-rails
* Load postgress app and ensure it boots on startup.
* Add the license key for Rubymine.
* Install Dash from App store. Add to Dock (right of iTerm).
* Install Docsets (in this order):
  * Ruby 2
  * RoR 3
  * HTML
  * CSS
  * jQuery
  * jQuery UI
  * Sass
  * Compass
  * Bootstrap
  * Foundation
  * Man pages
  * PostgreSQL
* RubyMine setup:
  * Install Java
  * Install license
  * Switch to Dark theme
  * Add to Dock (to the right of SublimeText)
  * Upgrade to new version

```text
User Name: Maker Square

===== LICENSE BEGIN =====
582980-15072013
000005Nf"t4YxDbHI3ZENc4LFpenB9
49vdK981HDY"qVEgYKwF7Bl4i83nqW
eLtwL7CYKzIYCcZFG!XCqR52SjJD73
===== LICENSE END =====
```

* **Log out of GitHub**
* **Switch to qwerty**

## Updating existing boxen

To run updates after changing this recipe, log in to the Admin account and run the following commands:

```console
$ sudo chown -R admin:staff /opt/boxen; boxen; sudo chown -R student:staff /opt/boxen
```

## Troubleshooting

### Oh god, git didn't work like we thought it would!

Yeah, there was a chance this would happen. We just need to [disable keychain management](http://stackoverflow.com/questions/16052602/disable-git-credential-osxkeychain).

## Upgrades

### 7/1/2013

```console
homesick pull dotfiles
homesick symlink dotfiles
```

Open up SublimeText in a folder - if the sidebar (files and directories, left side) has a black background, **SKIP THIS STEP** or you'll wipe out our settings:

```console
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 2/Installed\ Packages; rm -rf ~/Library/Application\ Support/Sublime\ Text\ 2/Packages; rm -rf ~/Library/Application\ Support/Sublime\ Text\ 2/Pristine\ Packages;
ln -s ~/Dropbox/Library/Application\ Support/Sublime\ Text\ 2/Installed\ Packages ~/Library/Application\ Support/Sublime\ Text\ 2/Installed\ Packages; ln -s ~/Dropbox/Library/Application\ Support/Sublime\ Text\ 2/Pristine\ Packages ~/Library/Application\ Support/Sublime\ Text\ 2/Pristine\ Packages; ln -s ~/Dropbox/Library/Application\ Support/Sublime\ Text\ 2/Packages ~/Library/Application\ Support/Sublime\ Text\ 2/Packages
```

```console
mkdir ~/.ssh; cp ~/Dropbox/System\ Files/id_rsa* ~/.ssh/; cp ~/Dropbox/System\ Files/authorized_keys ~/.ssh
export EDITOR='subl -w'
```

### 7/3/2013

```console
brew uninstall hub
rm -rf ~/.ssh
ln -s ~/Dropbox/System\ Files/ssh ~/.ssh
chmod 600 ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa.pub
```

### 7/15/2013

* Verify ssh is correctly linked.
* Verify hub is uninstalled.
* Verify SublimeText is properly synced. Reinstall (and resync) if necessary.

**From admin account:**

```console
sudo chown -R admin:staff /opt/boxen; boxen; sudo chown -R student:staff /opt/boxen
```

**From student account:**

```console
homesick pull dotfiles
homesick symlink dotfiles
```

* Load postgress app and ensure it boots on startup.
* Add the license key for Rubymine.
* Upgrade iTerm2.
* Run any App store upgrades.
* Install Dash from App store
  * Move into Dock (right of iTerm)
  * Add `/opt/boxen/rbenv/versions/2.0.0-p0/lib/ruby/gems/2.0.0` to paths for gems docset
* Install Dash Docsets (in this order):
  * Ruby 2
  * RoR 3
  * HTML
  * CSS
  * jQuery
  * jQuery UI
  * Sass
  * Compass
  * Bootstrap
  * Foundation
  * Man pages
  * PostgreSQL
* Ensure Ruby 2 is set as default rbenv version.
* Ensure rails bin is still at 3.2.13.
* Add the wallpaper image.
* `chmod go-w ~/Dropbox/bin`
* RubyMine setup:
  * Install Java
  * Install license
  * Switch to Dark theme
  * Add to Dock (to the right of SublimeText)
  * Upgrade to new version

```text
User Name: Maker Square

===== LICENSE BEGIN =====
582980-15072013
000005Nf"t4YxDbHI3ZENc4LFpenB9
49vdK981HDY"qVEgYKwF7Bl4i83nqW
eLtwL7CYKzIYCcZFG!XCqR52SjJD73
===== LICENSE END =====
```

**After all machines upgraded:**

* Move the backup SublimeText settings into place.
