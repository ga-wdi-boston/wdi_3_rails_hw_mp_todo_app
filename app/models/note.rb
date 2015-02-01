class Note < ActiveRecord::Base
  belongs_to :task

  validates :note, presence: true
  validates :task_id, presence: true
end
