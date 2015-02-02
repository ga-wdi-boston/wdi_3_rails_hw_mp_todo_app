class Task < ActiveRecord::Base
  belongs_to :list
  has_many :notes, dependent: :destroy
  validates :name, presence: true
end
