class Employee < ApplicationRecord
  attr_accessible :account, :employee_id, :manager_id
  has_many :subordinates, class_name: 'Employee', foreign_key: "manager_id"
  belongs_to :manager, class_name: "Employee"
end
