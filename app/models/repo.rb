# frozen_string_literal: true

class Repo# < ApplicationRecord
  include ActiveModel::AttributeMethods
  attr_accessor :name

  # belongs_to :repo_owner
  # belongs_to :repos_container
end
