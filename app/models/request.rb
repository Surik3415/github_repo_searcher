class Request
  include ActiveModel::AttributeMethods
  attr_accessor :owner, :repo_names
end
