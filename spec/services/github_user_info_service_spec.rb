# frozen_string_literal: true

RSpec.describe GithubUserInfoService do
  let(:query) { 'surik3415' }

  describe 'etches and prepares user data' do
    it 'check RepoOwner' do
      VCR.use_cassette('github_user_info_service_call') do
        service_response = described_class.call(query)
        expect(service_response.first).to be_a(RepoOwner)
      end
    end

    it 'check data type of name' do
      VCR.use_cassette('github_user_info_service_call') do
        service_response = described_class.call(query)

        expect(service_response.first.name).to be_a(String)
      end
    end

    it 'check data type of response' do
      VCR.use_cassette('github_user_info_service_call') do
        service_response = described_class.call(query)

        expect(service_response).to be_an(Array)
      end
    end
  end
end
