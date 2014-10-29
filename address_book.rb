Class Info_Entry
  attr_accessor :first_name :last_name :phone_num :email
end

def run_menu()
  menu = [
    "---MENU---",
    "1. Create new entry",
    "2. View existing entry",
    "3. Delete existing entry",
    "4. Quit Application"
  ]

  puts menu
  print "Please enter the number for your selection: "
  gets # don't need .chomp or #CHOMP as it were

end



def create_entry(a_book)
  new_entry = Info_Entry.new()

  puts "Enter Last Name"
  gets new_entry.last_name

  puts "Enter First Name"
  gets new_entry.first_name
  
  puts "Enter Phone Number"
  gets new_entry.phone_num

  puts "Enter Email"
  gets new_entry.email

  a_book.push new_entry
end


##########

address_book = []
is_running = true

puts "Welcome to your new Address Book\u2122" # (trademark symbol)"
# woooooah it actually made a comment that it's the trademark symbol, at least I don't think I copied that over

begin 
  m_select = run_menu().to_i # menu_selection is kinda long

  if m_select == 1
    puts "Creating new entry..."

    create_entry(address_book)
    puts address_book

  elsif m_select == 2
    puts "Viewing entries..."

  elsif m_select == 3
    puts "Deleting Entries..."
  elsif m_select == 4
    puts "Thank you for using Address Book\u2122.\nNow Quitting, ALL data will be lost (until I do the stretch goals)"
    exit 
  else 
    puts "Invalid menu selection. Please try again :)"
  end

end while is_running == true