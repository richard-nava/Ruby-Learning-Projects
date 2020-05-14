require_relative "crud"

# example class
class Student
  include Crud
  # Creates attributes/getters/setters for entire class
  attr_accessor :first_name, :last_name, :email, :password, :username

  # Class initalizer
  def initialize(first, last, username, email, password)
    @first_name = first
    @last_name = last
    @username = username
    @email = email
    @password = password
  end

  # To String method
  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email: #{@email}"
  end
end

# Create students named Richard and Quinten
richard = Student.new("Richard", "Nava", "richardnava", "richard@nava.com", "pass1")
quinten = Student.new("Quinten", "Randolph", "mobilesuit", "quinten@randolph.com", "pass2")

# print Richard's last name
puts richard.last_name

# Make Richard's username the same as Quinten's username
richard.username = quinten.username
puts "Richard should now be altered: "
puts richard

hashed_pass = richard.create_hash_digest(richard.password)
puts hashed_pass
