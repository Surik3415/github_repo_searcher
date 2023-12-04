class Request # < ApplicationRecord
  include ActiveModel::AttributeMethods
  attr_accessor :owner, :repo_names
end
