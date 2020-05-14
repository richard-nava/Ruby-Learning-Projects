# Needed for accessing modules within the same directory
require_relative "crud"

users = [
  { username: "richard", password: "pass1" },
  { username: "jon", password: "marsh1" },
  { username: "q", password: "mobilesuit" },
  { username: "emily", password: "flashpolaroid" },
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users
