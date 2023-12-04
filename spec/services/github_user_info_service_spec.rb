# frozen_string_literal: true

require 'rails_helper'

RSpec.describe GithubUserInfoService do
  describe '.call' do
    it 'fetches and prepares user data' do
      VCR.use_cassette('github_user_info_service_call') do
        # Assuming 'some_username' exists on GitHub for the purpose of this example
        service_response = described_class.call('surik3415')

        expect(service_response).to be_an(Array)
        expect(service_response.first).to be_a(RepoOwner)
        expect(service_response.first.name).to be_a(String)
      end
    end
  end
end
