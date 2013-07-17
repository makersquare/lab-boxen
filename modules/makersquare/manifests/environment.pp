class makersquare::environment {
  include github_for_mac

  include stdlib

  include alfred
  include sizeup

  include iterm2::stable
  
  include zsh
  include heroku
  include sublime_text_2
  sublime_text_2::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }
  include rubymine
  include mou

  include chrome
  include firefox
  include dropbox

  class { 'ruby::global':
    version => '2.0.0'
  }

  class { 'nodejs::global':
    version => 'v0.10.5'
  }

  package { 'boxen/brews/postgresql':
    ensure => 'absent'
  }
  include postgresapp

  include redis

  include imagemagick
  include xquartz

  package {
    [
      'wget',
      'mpssh'
    ]:
  }
}
