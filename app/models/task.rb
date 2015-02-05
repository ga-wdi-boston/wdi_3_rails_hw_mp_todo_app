class Task < ActiveRecord::Base
  belongs_to :list
  validates :name, presence: true
  has_many :notes, dependent: :destroy
end
