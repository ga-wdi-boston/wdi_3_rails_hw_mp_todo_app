class Group < ActiveRecord::Base
  belongs_to :project
  has_many :tasks, dependent: :destroy

  validates :title, presence: true,
                   length: { minimum: 3}
end
