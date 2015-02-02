class Task < ActiveRecord::Base
  belongs_to :group
  has_many :notes, dependent: :destroy

  validates :subject, presence: true,
                   length: { minimum: 3}
end
