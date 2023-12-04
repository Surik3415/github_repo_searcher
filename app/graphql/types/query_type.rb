# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField 

    field :user_data_and_repos, [Types::RequestType], 'Fetch user and repository data' do
      argument :query, String, 'GitHub login'
    end

    def user_data_and_repos(query:)
      owner_data = GithubUserInfoService.call(query)
      repo_data = GithubRepoInfoService.call(query)

      request = Request.new
      request.owner = owner_data
      request.repo_names = repo_data
      [request]
    end
  end
end
