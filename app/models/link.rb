class Link < ActiveRecord::Base
  belongs_to :code

  validates :name, :presence => true
  validates :description, :presence => true
  validates :github_link, :presence => true
  validates :launch, :presence => true
end
