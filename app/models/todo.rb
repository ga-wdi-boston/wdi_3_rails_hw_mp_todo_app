class Todo < ActiveRecord::Base
  #attr_accessible :todo, :completed

  belongs_to :List
  validates :todo, presence: true
end
