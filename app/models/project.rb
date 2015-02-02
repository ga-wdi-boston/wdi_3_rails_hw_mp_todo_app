class Project < ActiveRecord::Base
  has_many :lists, dependent: :destroy

  validates :name, presence: true
  validates :completed, inclusion: { in: [true, false] }
end
