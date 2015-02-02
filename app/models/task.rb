class Task < ActiveRecord::Base
  belongs_to :list
  has_many :notes, dependent: :destroy
  validates_inclusion_of :status, in: [true, false]

end
