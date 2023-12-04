# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :user_data_and_repos, [Types::RequestType], 'Fetch user and repository data' do
      argument :query, String, 'Description'
    end

    def user_data_and_repos(query:)
      owner_data = fetch_github_user_data(query)
      repo_names = fetch_github_data(query)

      # request = Request.new(owner: owner_data, repo_names: repo_names)
      request = Request.new
      request.owner = owner_data
      request.repo_names = repo_names
      [request]
    end

    def fetch_github_data(query)
      repos = []
      repos_url = "https://api.github.com/users/#{query}/repos"
      repos_response = HTTParty.get(repos_url)
      repos_response = JSON.parse(repos_response.body)
      repos_response.each do |response_repo|
        # repo = Repo.new(name: response_repo['name'])
        repo = Repo.new
        repo.name = response_repo['name']
        repos.push(repo)
      end
      # repo_container = ReposContainer.new(results: repos)
      repo_container = ReposContainer.new
      repo_container.results = repos
      [repo_container]
    end

    def fetch_github_user_data(query)
      user_url = "https://api.github.com/users/#{query}"
      user_response = HTTParty.get(user_url).as_json
      # repo_owner = RepoOwner.new(name: user_response['name'])
      repo_owner = RepoOwner.new
      repo_owner.name = user_response['name']

      [repo_owner]
    end
  end
end
