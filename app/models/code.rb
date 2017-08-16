class Code < ActiveRecord::Base
  has_many :links
  validates :skill, :presence => true
end
