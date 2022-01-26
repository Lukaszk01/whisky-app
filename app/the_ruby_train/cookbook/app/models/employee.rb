class Employee
    attr_accessor :id
    attr_reader :username, :password

    def initiialize(attributes = {})
        @id = attributes[:id]
        @username = attributes[:username]
        @password = attributes[:password]
    end

end