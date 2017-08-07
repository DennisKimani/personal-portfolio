class Code < ActiveRecord::Base
  validates :skill, :presence => true
  validates :link, :presence => true
end
