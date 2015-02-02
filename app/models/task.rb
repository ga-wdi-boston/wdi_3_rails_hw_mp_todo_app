class Task < ActiveRecord::Base
  belongs_to :list
  validates :title, presence: true

  has_many :notes, dependent: :destroy
end


