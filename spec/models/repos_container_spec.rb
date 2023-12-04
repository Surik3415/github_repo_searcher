# frozen_string_literal: true

RSpec.describe ReposContainer do
  describe 'attributes' do
    it { is_expected.to respond_to(:results) }
  end
end
