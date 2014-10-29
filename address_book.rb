class Info_Entry

  attr_accessor :first_name, :last_name, :phone_num, :email

  def initialize(first_name, last_name, phone_num, email)
    @first_name = first_name
    @last_name  = last_name
    @phone_num = phone_num
    @email = email
  end

end

def run_menu()
  menu = [
    "\n---MENU---",
    "1. Create new entry",
    "2. View existing entry",
    "3. Delete existing entry",
    "4. Quit Application"
  ]

  puts menu
  print "Please enter the number for your selection: "
  gets # don't need .chomp/#CHOMP, as it were

end



def create_entry(a_book)

  puts "Enter First Name"
  f =gets.chomp

  puts "Enter Last Name"
  l = gets.chomp
  
  puts "Enter Phone Number"
  p = gets.chomp

  puts "Enter Email"
  e = gets.chomp

  new_entry = Info_Entry.new(f, l, p, e)

  # Testing
  # puts new_entry.first_name
  # puts new_entry.last_name
  # puts new_entry.phone_num
  # puts new_entry.email

  a_book.push new_entry
end

def view_book(a_book)

  a_book.each_with_index do |entry, i|
    puts "#{i}    #{ entry.last_name }, #{entry.first_name}"
  end

end
##########

# address_book = []

address_book = [
  Info_Entry.new("Hammad", "Malik", "30145", "asdf@blah.com"),
  Info_Entry.new("Son", "Goku", "12341230", "oower@saiyan"),
  Info_Entry.new("Sallie", "Mae", "3qwer4", "asdof@bills")
]
is_running = true

puts "Welcome to your new Address Book\u2122" # (trademark symbol)"
# woooooah it actually made a comment that it's the trademark symbol, at least I don't think I copied that over

begin 
  m_select = run_menu().to_i # menu_selection is kinda long

  if m_select == 1
    puts "Creating new entry..."

    create_entry(address_book)

    # puts address_book.inspect
  elsif m_select == 2
    puts "Viewing entries..."

    # puts address_book.inspect
    view_book(address_book)

  elsif m_select == 3
    puts "Deleting Entries..."
  elsif m_select == 4
    puts "Thank you for using Address Book\u2122.\nNow Quitting, ALL data will be lost (until I do the stretch goals)"
    exit 
  else 
    puts "Invalid menu selection. Please try again :)"
  end

end while is_running == true