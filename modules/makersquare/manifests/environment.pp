class makersquare::environment {
  include github_for_mac

  include stdlib

  include mysql
  mysql::db { 'mydb': }

  include alfred

  include iterm2::stable
  include zsh
  include heroku
  include sublime_text_2
  sublime_text_2::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }
  include mou

  include chrome
  include hipchat

  include dropbox
}