# frozen_string_literal: true

namespace :jslint do
  desc 'Run JSLint on JavaScript files'
  task lint: :environment do
    require 'jslint'

    lint = JSLint::Lint.new(
      paths: ['public/javascripts/**/*.js'],
      exclude_paths: ['public/javascripts/vendor/**/*.js'],
      config_path: 'config/jslint.yml'
    )

    lint.run
  end
end
