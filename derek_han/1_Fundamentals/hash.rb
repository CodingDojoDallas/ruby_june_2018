#Studying Ranges

# x = {"first_name" => "Coding", "last_name" => "Dojo"}

# puts x["first_name"], x["last_name"]
# puts "Your last name is Dojo" if x["last_name"].eql? "Dojo"
# print "#####################\n"

# y = {:first_name => "Coding", :last_name => "Dojo"}
# print "Y is ", y,"\n"
# puts y[:first_name], y[:last_name]

# puts "DELETING :first_name"
# y.delete :first_name
# puts "Y is now ", y,"\n"

# if y.has_key? :first_name
# 	puts "Y has a key called :first_name"
# else
# 	puts "Y does not have a key called :first_name"
# end

# if y.has_value? "Dojo"
# 	puts "Y has a value called Dojo"
# else
# 	puts "Y does NOT have a value called Dojo"
# end


# h = {:first_name => "Coding", :last_name => "Dojo"}
# p h
# h.delete(:last_name)
# p h

# p our_hash = {first_name: "Coding", last_name: "Dojo" }

# def new_user user = {first_name: "Derek", last_name: "Han"}
# 	puts "Welcome to our site, #{user[:first_name]} #{user[:last_name]}!"

# end
# our_user = {first_name: 'Oscar', last_name: "Vazquez"}
# new_user
# new_user our_user


# def new_user first_name: "first", last_name: "last"
# 	puts "Welcome to our site, #{first_name} #{last_name}"
# end

# our_user = {first_name: 'Oscar', last_name: "Vazquez"}
# new_user
# new_user our_user

def new_user greeting= "Welcome", first_name: "first", last_name: "last"
	puts "#{greeting}, #{first_name}, #{last_name}"
end

our_user = {first_name: 'Oscar', last_name: "Vazquez"}
new_user
new_user "Hello", our_user












