require "employee"


class Startup
    attr_reader :name, :funding, :salaries, :employees

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(title)
        @salaries.has_key?(title)
    end

    def >(startup_2)
       if self.funding > startup_2.funding
            return true
       end
       false
    end
    def hire(name, title)
        if self.valid_title?(title)
           @employees << Employee.new(name, title)
        else
            raise "invalid title for employee"
        end
    end
    def size
        @employees.length
    end
    
    def pay_employee(employee)
       money_owed = @salaries[employee.title]
       if @funding >= money_owed
        employee.pay(money_owed)
        @funding -= money_owed
       else
        raise "were broke"
       end
    end

    def payday
        @employees.each do |employee|
            self.pay_employee(employee)
        end
    end

    def average_salary
        sum = 0
        @employees.each do |employee|
           sum += salaries[employee.title]
        end
        sum / (@employees.length * 1.0)        
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(startup_2)
        @funding += startup_2.funding
        startup_2.salaries.each do |title, salary|
            if !@salaries.has_key?(title)
            @salaries[title] = salary
            end
        end
        @employees += startup_2.employees
        startup_2.close()
    end
end
