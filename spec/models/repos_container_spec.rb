require 'rails_helper'
RSpec.describe ReposContainer, type: :model do
  describe 'attributes' do
    it { is_expected.to respond_to(:results) }
  end
end
