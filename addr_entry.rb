class Info_Entry

  attr_accessor :first_name, :last_name, :phone_num, :email

  def initialize(first_name="", last_name="", phone_num="", email="")
    @first_name = first_name
    @last_name  = last_name
    @phone_num = phone_num
    @email = email
  end
  

  ### TODO: Since you're using Classes instead of Hashes, you
  ###       can add some instance methods to make the rest of
  ###       your code easier, such as:
  ###
  ###         * full_name()  -->  "Bob Dole"
  ###         * last_first() -->  "Dole, Bob"

end

