# frozen_string_literal: true

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'
Rails.application.load_tasks
load File.expand_path('lib/tasks/jslint.rake', __dir__)
Rake::Task['jslint:lint'].invoke if ARGV.include?('jslint:lint')
