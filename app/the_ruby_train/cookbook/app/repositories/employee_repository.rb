require "csv"
require_relative "../models/employee"



class EmployeeRepository
    def initializie(csv_file)
        @csv_file = csv_file
        @employees = []
        @next_id = 1
        load_csv if File.exist?(@csv_file)
    end

    def all_riders
        @employees
    end

    def find(id)
        @employees.find { |employee| employee.id == id  }
    end
    def find_by_username(username)
        @employees.find { |employee| employee.username == username  }
    end
end