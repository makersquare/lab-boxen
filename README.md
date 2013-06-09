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

* echo 'source /opt/boxen/env.sh' >> ~/.zshrc
* sudo chown -R student:staff /opt/boxen
* Set Machine Name
* replace the motd with our custom one (below)

```

888b     d888     d888     888    d8P  8888888888 8888888b.  
8888b   d8888    d88888    888   d8P   888        888   Y88b 
88888b.d88888   d88P 888   888  d8P    888        888    888 
888Y88888P888  d88P   888  888d88K     8888888    888   d88P 
888 Y888P 888 d88P     888 8888888b    888        8888888P"  
888  Y8P  888 d88P88888888 888  Y88b   888        888 T88b   
888   "   888 d888     888 888   Y88b  888        888  T88b  
888       888 d88P     888 888    Y88b 8888888888 888   T88b 
 .oOOOo.   .oOOOo.   O        o    Oo    `OooOOo.  o.OOoOoo 
 o     o  .O     o.  o        O   o  O    o     `o  O       
 O.       o       O  O        o  O    o   O      O  o       
  `OOoo.  O       o  o        o oOooOoOo  o     .O  ooOO    
       `O o       O  o        O o      O  OOooOO'   O       
        o O    Oo o  O        O O      o  o    o    o       
 O.    .O `o     O'  `o      O  o      O  O     O   O       
  `oooO'   `OoooO Oo  `OooooO'  O.     O  O      o ooOooOoO 
                                                          
```

* Create a non-admin account 'student/MakerSquare Student' with password 'makersquare'
  * Enable automatic login for this account
  * Set the account avatar to the MakerSquare GitHub org logo
* Enable guest account

#### From the student acount

* curl -s https://gist.github.com/techpeace/c93f9fb4b7483f5f8c41/raw/post-boxen.sh > /tmp/post-install-boxen; bash /tmp/post-install-boxen
* Add home and code folders to Finder sidebar
* Enable screen inversion hotkey
  * settings -> keyboard -> keyboard shortcuts -> accessibility -> invert colors
* Enable Dvorak
  * settings -> language -> input sources -> Dvorak
    * then keyboard shortcut
* Enable ctrl-zoom
  * settings -> accessibility -> zoom -> crl-zoom
* Enable Remote Management
  * Only for Admin account
  * Enable all permissions
* Disable spotlight shortcut
* Change Alfred shortcut to command-space
  * change alfred theme to dark, hide hat
* Ensure SizeUp boots on load
* Add Chrome, Hipchat, Mou, SublimeTExt, iTerm to Dock
* Install oh-my-zsh
  * Install our custom .zshrc (above)
    * need [Monaco power line, 14pt](https://github.com/mneorr/powerline-fonts/raw/bfcb152306902c09b62be6e4a5eec7763e46d62d/Monaco/Monaco%20for%20Powerline.otf)
    * change iterm2 theme to pastel dark
* Configure Dropbox
* Set up automatic updates for Chrome
  * also sign in to a Chrome account so we can sync bookmarks/apps
* Should we set up a hipchat room for students?
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