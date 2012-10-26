# Capistrano::Unicorn::Default

```ruby
  alias_task "deploy:start"  , "unicorn:start"
  alias_task "deploy:stop"   , "unicorn:stop"
  alias_task "deploy:restart", "unicorn:reload"
```

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-unicorn-default'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-unicorn-default

## Usage

require in your config/deploy.rb

```ruby
require 'capistrano-unicorn-default'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
