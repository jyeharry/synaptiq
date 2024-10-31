module EmployeeHelper
  def list_employee_hierarchy(employee)
    tag.ul do
      concat tag.li(employee.name)
      employee.employees.each do |sub_employee|
        concat list_employee_hierarchy(sub_employee)
      end
    end
  end
end
