class Task < ActiveRecord::Base
  belongs_to :group
  has_many :notes, dependent: :destroy

  validates :subject, presence: true,
                   length: { minimum: 3}

  LEVEL = %w{ Low Medium High }
  validates :priority, inclusion: {in: LEVEL, message: 'is Invalid'}

  validates_date :due_date

end
