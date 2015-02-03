class Project < ActiveRecord::Base
  has_many :groups, dependent: :destroy

  validates :title, presence: true,
                   length: { minimum: 3}

  STATUS = %w{ Not-Started In-Progress Completed}
  validates :status, inclusion: {in: STATUS, message: 'is Invalid'}

  validates :due_date

end
