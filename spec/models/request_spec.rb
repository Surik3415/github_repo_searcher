require 'rails_helper'

RSpec.describe Request, type: :model do
  describe 'attributes' do
    it { is_expected.to respond_to(:owner) }
    it { is_expected.to respond_to(:repo_names) }
  end
end
