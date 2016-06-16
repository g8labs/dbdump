require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

load "lib/tasks/db.rake"

task :default => :spec
