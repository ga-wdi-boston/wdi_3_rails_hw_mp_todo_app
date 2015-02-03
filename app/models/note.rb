class Note < ActiveRecord::Base
  belongs_to :task
  validatesm :comment, presence: true
end
