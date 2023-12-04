# frozen_string_literal: true

RSpec.describe Types::RepoOwnerType, type: :graphql do
  describe 'fields' do
    it 'has a name field of String type' do
      expect(described_class).to have_field(:name).of_type('String')
    end
  end
end
