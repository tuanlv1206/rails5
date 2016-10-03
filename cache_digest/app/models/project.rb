class Project < ApplicationRecord
  has_many :tasks

  def incomplete_tasks
    tasks.where(completed_at: nil)
  end
end
