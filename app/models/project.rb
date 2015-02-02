class Project < ActiveRecord::Base
  has_many :groups, dependent: :destroy

  validates :title, presence: true,
                   length: { minimum: 3}
end
