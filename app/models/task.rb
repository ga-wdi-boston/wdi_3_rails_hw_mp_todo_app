class Task < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 1}
  validates :priority, presence: true
  validates :priority, inclusion: 0..5
  belongs_to :list
  has_many :notes, dependent: :destroy
end
