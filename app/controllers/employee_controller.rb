class EmployeeController < ApplicationController
  def index
    @ceo = Employee.ceo
  end
end
