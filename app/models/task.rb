class Task < ActiveRecord::Base
  has_and_belongs_to_many :tags
  validates :content, :presence => true
end
