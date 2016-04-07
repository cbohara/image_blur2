# Christmas is coming and many people dreamed of having a ride with Santa's sleigh. 
# But, of course, only Santa himself is allowed to use this wonderful transportation. 
# And in order to make sure, that only he can board the sleigh, 
# there's an authentication mechanism.

# Your task is to implement the authenticate() method of the sleigh, 
# which takes the name of the person, 
# who wants to board the sleigh and a secret password. 
# If, and only if, the name equals "Santa Claus" and the password is "Ho Ho Ho!" 
# (yes, even Santa has a secret password with uppercase and lowercase letters and 
#   special characters :D), the return value must be true. 
# Otherwise it should return false.

class Sleigh
  def initialize(input_name, input_password)
    @input_name = input_name
    @input_password = input_password
  end 

  def authenticate(input_name, input_password)
    @input_name == "Santa Claus" && @input_password == "Ho Ho Ho!"
  end

end

# why do I need to input parameters for both building object and 
# calling method on object
sleigh = Sleigh.new("Santa Claus","Ho Ho Ho!")
p sleigh.authenticate("Santa Claus","Ho Ho Ho!")

sleigh2 = Sleigh.new("NO","Ho Ho Ho!")
p sleigh2.authenticate("NO","Ho Ho Ho!")
