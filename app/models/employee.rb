class Employee < ApplicationRecord
  has_many :employees, foreign_key: "manager_id"
  belongs_to :manager, class_name: "Employee", optional: true

  validate :only_ceo_can_have_no_manager

  scope :ceo, -> { find_by(manager_id: nil) }

  private

  def only_ceo_can_have_no_manager
    unless Employee.ceo.nil?
      errors.add :manager_id, "Company already has a CEO, please provide a manager for this employee"
    end
  end
end
