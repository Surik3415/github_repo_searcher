# spec/graphql/types/repo_type_spec.rb

require 'rails_helper'

RSpec.describe Types::RepoType, type: :graphql do
  describe 'fields' do
    it { expect(described_class).to have_field(:name).of_type('String') }
    it { expect(described_class).to have_field(:repo_owner).of_type('RepoOwner!') }
  end
end
