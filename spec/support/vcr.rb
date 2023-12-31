# frozen_string_literal: true

require 'vcr'

VCR.configure do |config|
  # config.cassette_library_dir = 'fixtures/vcr_cassettes'
  config.cassette_library_dir = Rails.root.join('spec/fixtures/vcr_cassettes')

  config.hook_into :webmock
end
