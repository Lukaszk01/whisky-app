class SessionsView
  def ask_for(stuff)
    puts "#{stuff}?"
    print "> "
    return gets.chomp
  end

  def print_wrong_credentials
    puts "Wrong credentials... Try again"
  end

  def display
    employees.each_with_index do | index, employee |
      puts "#{employeeindex + 1}. #{employee.username} "
    end
  end
end