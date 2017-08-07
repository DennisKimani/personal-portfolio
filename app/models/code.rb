class Code < ActiveRecord::Base
  validates :skill, :presence => true
  valedates :link, :presence => true
end
