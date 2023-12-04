module Types
  class RequestType < Types::BaseObject
    field :owner, [Types::RepoOwnerType], 'User data', null: true
    field :repo_names, [Types::ReposContainerType], 'Repository data', null: true
  end
end
