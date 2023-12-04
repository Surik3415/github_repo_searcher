# frozen_string_literal: true

RSpec.describe Types::QueryType, type: :graphql do
  describe 'user_data_and_repos QueryType' do
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

    it 'check data type of prepared data' do
      VCR.use_cassette('query_type_user_data_and_repos') do
        result = execute_query(query)
        prepared_data = result['data']['userDataAndRepos']
        expect(prepared_data).to be_an(Array)
      end
    end

    it 'check data type of owner data' do
      VCR.use_cassette('query_type_user_data_and_repos') do
        result = execute_query(query)
        prepared_data = result['data']['userDataAndRepos']
        expect(prepared_data.first['owner'].first['name']).to be_a(String)
      end
    end

    it 'check data type of repoNames data' do
      VCR.use_cassette('query_type_user_data_and_repos') do
        result = execute_query(query)
        prepared_data = result['data']['userDataAndRepos']
        expect(prepared_data.first['repoNames']).to be_an(Array)
      end
    end
  end
end
