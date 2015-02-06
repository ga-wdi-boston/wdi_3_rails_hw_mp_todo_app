class List < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 1}
  belongs_to :project
  has_many :tasks, dependent: :destroy
end
