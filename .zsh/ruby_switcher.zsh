export ORIGINAL_PATH=$PATH

function use_ruby_187 {
 export MY_RUBY_HOME=/System/Library/Frameworks/Ruby.framework/Versions/Current/usr
 export GEM_HOME=~/.gem/ruby/1.8
 export GEM_PATH=~/.gem/ruby/1.8
 update_path
 echo 'Using ruby 1.8.7 from OSX'
}

function use_jruby_140 {
 export MY_RUBY_HOME=~/.rubies/jruby-1.4.0
 export GEM_HOME=~/.gem/jruby/1.8
 export GEM_PATH=~/.gem/jruby/1.8
 # Set jruby home to make nailgun happy.
 export JRUBY_HOME=/Users/chad/.rubies/jruby-1.4.0
 update_path
 echo 'Using jruby 1.4.0'
}


function use_ruby_191 {
 export MY_RUBY_HOME=~/.rubies/ruby_191
 export GEM_HOME=~/.gem/ruby/1.9.1
 export GEM_PATH=~/.gem/ruby/1.9.1
 update_path
 echo 'Using ruby 1.9.1'
}

function use_ruby_192 {
 export MY_RUBY_HOME=~/.rubies/ruby_192dev
 export GEM_HOME=~/.gem/ruby/1.9.2
 export GEM_PATH=~/.gem/ruby/1.9.2
 update_path
 echo 'Using ruby 1.9.2'
}

function use_jruby  { use_jruby_140 }
function use_ruby18 { use_ruby_187  }
function use_ruby19 { use_ruby_191  }
function use_ruby   { use_ruby_187 }

function update_path {
 export PATH=$GEM_HOME/bin:$MY_RUBY_HOME/bin:$ORIGINAL_PATH
}

use_ruby
