class GithubRepoInfoService
  def initialize(query)
    @query = query
  end

  def self.call(query)
    new(query).call
  end

  def call
    repo_data = fetch_repo_data
    repos = prepare_repo_data(repo_data)
    create_repo_container(repos)
  end

  private

  def fetch_repo_data
    repos_url = "https://api.github.com/users/#{@query}/repos"
    HTTParty.get(repos_url)
  end

  def prepare_repo_data(repos_response)
    JSON.parse(repos_response.body).map do |response_repo|
      repo = Repo.new
      repo.name = response_repo['name']
      repo
    end
  end

  def create_repo_container(repos)
    repo_container = ReposContainer.new
    repo_container.results = repos
    [repo_container]
  end
end
