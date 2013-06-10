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
* **Figure out how to enable passwordless sudo**
* `brew uninstall rbenv-gemset`
* Enable Remote Login
  * settings -> sharing
* Install keys:

```
mkdir ~/.ssh
cp /Volumes/KINGSTON/id_dsa.pub ~/.ssh/
cp /Volumes/KINGSTON/id_dsa.pub ~/.ssh/authorized_keys
cp /Volumes/KINGSTON/id_dsa ~/.ssh/
chmod 700 $HOME/.ssh
chmod 600 $HOME/.ssh/id_dsa*
```

* Update iTerm2
* `sudo curl -o /etc/motd https://gist.github.com/techpeace/5745650/raw/a9c4ee12cba0d2f61f795dc4aa7344e451a54753/motd`
* Set Machine Name
  * scutil --set ComputerName "challenge-1"
  * scutil --set HostName "challenge-1"
  * scutil --set LocalHostName "challenge-1"
* Create a non-admin account 'student/MakerSquare Student' with password 'makersquare'
  * Set the account avatar to the MakerSquare GitHub org logo
* `sudo chown -R student:staff /opt/boxen`
* Enable guest account

#### From the student acount

* Install oh-my-zsh
  * [Menlo for powerline](https://gist.github.com/sjl/1627888) - make it 15pt
  * change iterm2 theme to pastel dark
  * `curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh`
* `source /opt/boxen/env.sh`
* `curl -s https://gist.github.com/techpeace/c93f9fb4b7483f5f8c41/raw/post-boxen.sh > /tmp/post-install-boxen; bash /tmp/post-install-boxen`
* `source /opt/boxen/env.sh`
* `homesick symlink dotfiles`
* Add home and code folders to Finder sidebar
* Enable screen inversion hotkey
  * settings -> keyboard -> keyboard shortcuts -> accessibility -> invert colors
* Set computer to sleep after 1 hour
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
* Set up automatic updates for Chrome
  * also sign in to a Chrome account so we can sync bookmarks/apps
* `bundle config --global path vendor/bundle` - again, don't know why
* try out reddit-on-rails
* **Log out of GitHub**
* **Switch to qwerty**

## Updating existing boxen

To run updates after changing this recipe, log in to the Admin account and run the following commands:

```console
$ sudo chown -R admin:staff /opt/boxen
$ boxen
$ sudo chown -R student:staff /opt/boxen
```

## Troubleshooting

### Oh god, git didn't work like we thought it would!

Yeah, there was a chance this would happen. We just need to [disable keychain management](http://stackoverflow.com/questions/16052602/disable-git-credential-osxkeychain).
