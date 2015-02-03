class List < ActiveRecord::Base
  has_many :tasks, dependent: :destroy


  def completed_tasks
    tasks.where(completed?: true)
  end

  def pending_tasks
    tasks.where(completed?: false)
  end
end
