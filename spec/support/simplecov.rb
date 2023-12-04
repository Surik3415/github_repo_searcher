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
  add_filter 'app/graphql/types/node_type.rb'
  add_filter 'app/graphql/types/base_union.rb'
  add_filter 'app/graphql/types/base_scalar.rb'
  add_filter 'app/graphql/types/base_interface.rb'
  add_filter 'app/graphql/types/base_input_object.rb'
  add_filter 'app/graphql/types/base_enum.rb'
  add_filter 'app/controllers/graphql_controller.rb'
end
