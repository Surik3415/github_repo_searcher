# frozen_string_literal: true

RSpec.describe Types::ReposContainerType, type: :graphql do
  describe 'fields' do
    it 'has a results field of RepoType type' do
      expect(described_class).to have_field(:results).of_type('[Repo!]')
    end
  end
end
