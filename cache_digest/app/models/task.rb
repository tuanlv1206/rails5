class Task < ApplicationRecord
  belongs_to :project, touch: true
end
