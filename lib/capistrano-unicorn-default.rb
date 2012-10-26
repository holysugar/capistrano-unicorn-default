require 'capistrano'
require "capistrano-unicorn-default/version"

configuration = Capistrano::Configuration.respond_to?(:instance) ?
  Capistrano::Configuration.instance(:must_exist) :
  Capistrano.configuration(:must_exist)

configuration.load do
  namespace :deploy do
    task :start do
      unicorn.start
    end
    task :stop do
      unicorn.stop
    end
    task :restart do
      unicorn.reload
    end
  end
end
