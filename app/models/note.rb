class Note < ActiveRecord::Base
  belongs_to :task
  has_many :notes, dependent: :destroy
end
