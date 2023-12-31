# frozen_string_literal: true

RSpec.describe Request do
  describe 'attributes' do
    it { is_expected.to respond_to(:owner) }
    it { is_expected.to respond_to(:repo_names) }
  end
end
