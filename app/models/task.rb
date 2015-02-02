class Task < ActiveRecord::Base

  belongs_to :list
  has_many :notes

  STATUS = %w{pending completed}

  validates :title, presence: true
  validates :status, inclusion: {in: STATUS, message: "is invalid"}

end
