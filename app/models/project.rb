class Project < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 1}
  has_many :lists, dependent: :destroy
end
