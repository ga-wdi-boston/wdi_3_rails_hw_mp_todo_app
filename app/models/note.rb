class Note < ActiveRecord::Base
  validates :comment, presence: true, length: {minimum: 1}
  belongs_to :task
end
