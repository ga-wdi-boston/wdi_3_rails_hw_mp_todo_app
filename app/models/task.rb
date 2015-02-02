class Task < ActiveRecord::Base
  has_many :notes, dependent: :destroy
  belongs_to :list

  validates :title, presence: true
end
