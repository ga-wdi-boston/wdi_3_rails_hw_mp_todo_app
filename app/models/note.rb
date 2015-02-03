class Note < ActiveRecord::Base
  validates :note, presence: true
  belongs_to :task
end
