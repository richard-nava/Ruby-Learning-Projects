# Fun with bcrypt
# Allows forsecure password storage

module Crud

  # Must include this line in the class if it will use bcrypt
  require "bcrypt"

  def create_hash_digest(pass)
    BCrypt::Password.create(pass)
  end

  def verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def create_secure_users(userlist)
    userlist.each do |record|
      record[:password] = create_hash_digest(record[:password])
    end
    userlist
  end

  def authenticate_user(username, password, user_list)
    user_list.each do |record|
      if record[:username] == username && verify_hash_digest(record[:password]) == password
        return record
      end
    end
    "Incorrect credentials"
  end
end
