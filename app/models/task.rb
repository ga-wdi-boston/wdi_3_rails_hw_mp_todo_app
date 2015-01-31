class Task < ActiveRecord::Base
  belongs_to :list
  has_many :notes

  validates :name, presence: true
  validates :completed, inclusion: { in: [true, false] }
end
