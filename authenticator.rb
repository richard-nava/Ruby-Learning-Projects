users = [
    { username: "richard", password: "pass1"},
    { username: "jon", password: "marsh1"},
    { username: "q", password: "mobilesuit"},
    { username: "emily", password: "flashpolaroid"}
]


def auth_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            puts 'im here now'
            return user_record 
        end
    end
    return 'Credentials were not correct'
end


puts "Welcome to the Authenticator!"
25.times{print "-"}
puts

attempts = 1
while attempts < 4 
    print 'Username: '
    usern = gets.chomp
    puts
    print 'Password: '
    passw = gets.chomp
    authentication = auth_user(usern, passw, users)
    puts authentication
    puts "Press n to quit or any other key to continue..."
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1
end
puts 'You have exceeded the number of attempts' if attempts == 4




