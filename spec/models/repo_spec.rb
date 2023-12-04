# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Repo do
  describe 'attributes' do
    it { is_expected.to respond_to(:name) }
  end
end
