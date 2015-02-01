class Task < ActiveRecord::Base
  belongs_to :group
  has_many :notes, dependent: :destroy
end
