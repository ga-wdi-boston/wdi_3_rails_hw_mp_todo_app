class Task < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :list
  has_many :notes, dependent: :destroy
end
