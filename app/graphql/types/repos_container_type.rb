module Types
  class ReposContainerType < Types::BaseObject
    field :id, ID, null: false
    field :results, [Types::RepoType], null: true
  end
end
