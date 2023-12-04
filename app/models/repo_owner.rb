# frozen_string_literal: true

class RepoOwner #< ApplicationRecord
  include ActiveModel::API

  # has_many :repos, dependent: :destroy
  attr_accessor :name
end
