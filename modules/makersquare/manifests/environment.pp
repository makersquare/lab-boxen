class makersquare::environment {
  include github_for_mac

  include stdlib

  # Switch to postgres
  include mysql
  mysql::db { 'mydb': }

  include alfred

  include iterm2::stable
  
  include osx
  osx::recovery_message { 'If this Mac is found, please email hello@themakersquare.com.': }

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

  class { 'ruby::global':
    version => '2.0.0'
  }  
}