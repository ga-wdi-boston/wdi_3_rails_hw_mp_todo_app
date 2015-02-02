class Note < ActiveRecord::Base
  belongs_to :task

  validates :note, presence: true
end
