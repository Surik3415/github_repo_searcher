# spec/graphql/types/request_type_spec.rb

# require 'rails_helper'

RSpec.describe Types::RequestType, type: :graphql do
  describe 'fields' do
    it 'has an owner field of RepoOwnerType type' do
      expect(described_class).to have_field(:owner).of_type('[RepoOwner!]')
    end

    it 'has a repo_names field of ReposContainerType type' do
      expect(described_class).to have_field(:repo_names).of_type('[ReposContainer!]')
    end
  end
end
