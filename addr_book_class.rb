class Info_Entry

  attr_accessor :first_name, :last_name, :phone_num, :email

  def initialize(first_name, last_name, phone_num, email)
    @first_name = first_name
    @last_name  = last_name
    @phone_num = phone_num
    @email = email
  end

end

def create_entry(a_book)

  ### take input 
  ###
  puts "> Enter First Name"
  f =gets.chomp

  puts "> Enter Last Name"
  l = gets.chomp
  puts "> Enter Phone Number"
  p = gets.chomp

  puts "> Enter Email"
  e = gets.chomp
  
  ### make new address entry
  ###
  new_entry = Info_Entry.new(f, l, p, e)

  a_book.push new_entry

end

def view_shortlist(a_book)
  ### interate through all entries and print shortlist
  ###
  a_book.each_with_index do |entry, i|
    puts "#{i}   #{ entry.last_name }, #{entry.first_name}"
  end

  ### and one more value at the end to quit out
  ###
  puts "#{a_book.size} > Quit to Menu"
end

def view_entry (a_book, element)

end