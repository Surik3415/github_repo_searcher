# frozen_string_literal: true

module Types
  class RepoType < Types::BaseObject
    field :name, String
    field :repo_owner, Types::RepoOwnerType, null: false
  end
end
