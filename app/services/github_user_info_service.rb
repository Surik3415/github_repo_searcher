# frozen_string_literal: true

class GithubUserInfoService
  def initialize(query)
    @query = query
  end

  def self.call(query)
    new(query).call
  end

  def call
    user_data = fetch_user_data
    prepare_user_data(user_data)
  end

  private

  def fetch_user_data
    user_url = "https://api.github.com/users/#{@query}"
    HTTParty.get(user_url).as_json
  end

  def prepare_user_data(user_data)
    repo_owner = RepoOwner.new
    repo_owner.name = user_data['name']
    [repo_owner]
  end
end
