class ReposContainer #< ApplicationRecord
  include ActiveModel::AttributeMethods

  # has_many :repos, dependent: :destroy
  attr_accessor :results
end
