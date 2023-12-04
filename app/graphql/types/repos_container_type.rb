module Types
  class ReposContainerType < Types::BaseObject
    field :results, [Types::RepoType], null: true
  end
end
