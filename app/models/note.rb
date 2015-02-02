class Note < ActiveRecord::Base
  belongs_to :task
  validates :comment, presence: true
end
