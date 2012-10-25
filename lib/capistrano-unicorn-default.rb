require 'capistrano'
require "capistrano-unicorn-default/version"

configuration = Capistrano::Configuration.respond_to?(:instance) ?
  Capistrano::Configuration.instance(:must_exist) :
  Capistrano.configuration(:must_exist)

configuration.load do

  alias_task "deploy:start", "unicorn:start"
  alias_task "deploy:stop", "unicorn:stop"
  alias_task "deploy:restart", "unicorn:reload"

end
