function install_jruby_140 {
  mkdir -p ~/.rubies && cd /tmp &&
  curl -O -L --silent http://jruby.kenai.com/downloads/1.4.0/jruby-bin-1.4.0.zip &&
  rm -rf jruby-1.4.0 && jar xf jruby-bin-1.4.0.zip &&
  ln -sf ~/.rubies/jruby-1.4.0/bin/jruby ~/.rubies/jruby-1.4.0/bin/ruby &&
  ln -sf ~/.rubies/jruby-1.4.0/bin/jgem ~/.rubies/jruby-1.4.0/bin/gem   &&
  ln -sf ~/.rubies/jruby-1.4.0/bin/jirb ~/.rubies/jruby-1.4.0/bin/irb &&
  chmod +x ~/.rubies/jruby-1.4.0/bin/{jruby,jgem,jirb} &&
  rm -rf ~/.rubies/jruby-bin-1.4.0.zip &&
  use_jruby_140 && install_jruby_openssl && install_basic_gems &&
  cd ~
}

function install_ruby_191 {
  mkdir -p ~/.rubies && cd /tmp
  curl -L -O ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.1-p243.tar.gz &&
  tar xzf ruby-1.9.1-p243.tar.gz &&
  cd ruby-1.9.1-p243 &&
  ./configure --prefix=$HOME/.rubies/ruby_191 --enable-shared &&
  make && make install &&
  rm -rf ruby-1.9.1-p243.tar.gz ruby-1.9.1-p243 &&
  use_ruby_191 && install_basic_gems && cd ~
}

function install_ruby_192 {
  mkdir -p ~/.rubies && cd /tmp
  curl -L -O ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-preview1.tar.gz &&
  tar xzf ruby-1.9.2-preview1.tar.gz &&
  cd ruby-1.9.2-preview1 &&
  ./configure --prefix=$HOME/.rubies/ruby_192 --enable-shared &&
  make && make install &&
  rm -rf ruby-1.9.2-preview1.tar.gz ruby-1.9.2-preview1 &&
  use_ruby_192 && install_basic_gems && cd ~
}

function install_basic_gems {
  gem install rdoc rake gemcutter --no-rdoc --no-ri
}

function install_jruby_openssl {
  gem install jruby-openssl --no-rdoc --no-ri
}
