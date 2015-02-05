class Note < ActiveRecord::Base
  belongs_to :task

  validates :body, presence: true,
                   length: { minimum: 3}
end
