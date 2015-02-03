class Note < ActiveRecord::Base
  belongs_to :task
  validates :message, presence: true
end
