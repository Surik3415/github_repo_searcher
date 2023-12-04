RSpec.describe GithubRepoInfoService do
  describe '.call' do
    it 'fetches and prepares repository data' do
      VCR.use_cassette('github_repo_info_service_call') do
        # Assuming 'some_username' exists on GitHub for the purpose of this example
        service_response = GithubRepoInfoService.call('surik3415')

        expect(service_response).to be_an(Array)
        expect(service_response.first).to be_a(ReposContainer)
        expect(service_response.first.results).to all(be_a(Repo))
      end
    end
  end
end
