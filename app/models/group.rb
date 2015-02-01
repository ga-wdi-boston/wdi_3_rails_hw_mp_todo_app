class Group < ActiveRecord::Base
  belongs_to :list
  has_many :tasks
end
