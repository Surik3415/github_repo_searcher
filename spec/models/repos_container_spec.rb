# frozen_string_literal: true

require 'rails_helper'
RSpec.describe ReposContainer do
  describe 'attributes' do
    it { is_expected.to respond_to(:results) }
  end
end
