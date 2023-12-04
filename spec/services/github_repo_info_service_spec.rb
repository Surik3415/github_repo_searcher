# frozen_string_literal: true

RSpec.describe GithubRepoInfoService do
  let(:query) { 'surik3415' }

  describe 'fetches and prepares repository data' do
    it 'check ReposContainer' do
      VCR.use_cassette('github_repo_info_service_call') do
        service_response = described_class.call(query)
        expect(service_response.first).to be_a(ReposContainer)
      end
    end

    it 'check Repo' do
      VCR.use_cassette('github_repo_info_service_call') do
        service_response = described_class.call(query)
        expect(service_response.first.results).to all(be_a(Repo))
      end
    end
  end
end
