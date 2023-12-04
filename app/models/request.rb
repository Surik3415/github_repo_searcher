# frozen_string_literal: true

class Request
  include ActiveModel::AttributeMethods
  attr_accessor :owner, :repo_names
end
