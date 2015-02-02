class Note < ActiveRecord::Base
  belongs_to :task

  validates :text, presence: true
end
