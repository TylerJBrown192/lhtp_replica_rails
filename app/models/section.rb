class Section < ActiveRecord::Base
  has_many :weeks
  
  validates :name, :presence => true
end
