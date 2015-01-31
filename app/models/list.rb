class List < ActiveRecord::Base
  has_many :tasks

  # validates :title, presence: true
  validates_inclusion_of :status, in: [true, false]

  # validate :check_boolean_field

end
