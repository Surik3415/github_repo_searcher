require 'rails_helper'

RSpec.describe Types::QueryType, type: :graphql do
  describe 'user_data_and_repos' do
    let(:query) do
      <<~GQL
        query {
          userDataAndRepos(query: "surik3415") {
            owner {
              name
            }
            repoNames {
              results {
                name
              }
            }
          }
        }
      GQL
    end

    it 'fetches user and repository data' do
      VCR.use_cassette('query_type_user_data_and_repos') do
        result = execute_query(query)
        prepared_data = result['data']['userDataAndRepos']
        expect(prepared_data).to be_an(Array)
        expect(prepared_data.first['owner']).to be_a(Array)
        expect(prepared_data.first['repoNames']).to be_an(Array)
      end
    end
  end
end
