class Dog < ApplicationRecord
  has_many :employees

  def self.get_employees(param)
    if !param.nil?
      @employees = Dog.all.sort { |a, b| b.employees.count <=> a.employees.count }
    else
      @employees = Employee.all
    end
  end

end
