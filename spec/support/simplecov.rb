# frozen_string_literal: true

require 'simplecov'

SimpleCov.start 'rails' do
  add_filter '/app/channels'
  add_filter '/app/mailers'
  add_filter '/app/jobs'
  add_filter 'app/graphql/mutations'
  add_filter 'app/graphql/github_repo_searcher_schema.rb'
  add_filter 'app/models/application_record.rb'
  add_filter 'app/helpers'
end
