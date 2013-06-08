# Lab Boxen

To set up a new lab machine, check out the pre (and post) setup instructions [here](https://gist.github.com/techpeace/c93f9fb4b7483f5f8c41).

After running through the pre-boxen setup instructions, head on over to [the Boxen web interface](http://makersquare-lab-boxen.heroku.com) and run the command listed there under a terminal on the student account.

After boxen finishes doing its sweet, sweet thing, run through the post-boxen setup instructions (that I was too lazy to automate). Blammo! You've got yourself a new lab machine.

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