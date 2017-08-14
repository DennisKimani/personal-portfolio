class Link < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :github_link, :presence => true
  validates :launch, :presence => true
end
