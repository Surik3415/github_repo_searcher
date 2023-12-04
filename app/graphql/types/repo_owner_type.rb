# frozen_string_literal: true

module Types
  class RepoOwnerType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :login, String, null: false
    field :repos, Types::RepoType, null: false
    field :owner_repos_name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
