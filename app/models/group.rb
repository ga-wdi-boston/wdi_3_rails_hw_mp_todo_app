class Group < ActiveRecord::Base
  belongs_to :project
  has_many :tasks, dependent: :destroy

  validates :title, presence: true,
                   length: { minimum: 3}

  LEVEL = %w{ Low Medium High }
  validates :priority, inclusion: {in: LEVEL, message: 'is Invalid'}
end
