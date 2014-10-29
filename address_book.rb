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

is_running = true

puts "Welcome to your new Address Book\u2122" # (trademark symbol)"
# woooooah it actually made a comment that it's the trademark symbol, at least I don't think I copied that over

begin 
  m_select = run_menu().to_i # menu_selection is kinda long

  if m_select == 1
    # puts 1
  elsif m_select == 2
    # puts 2
  elsif m_select == 3
    # puts 3
  elsif m_select == 4
    puts "Thank you for using Address Book\u2122.\nNow Quitting, ALL data will be lost (until I do the stretch goals)"
    exit 
  else 
    puts "Invalid menu selection. Please try again :)"
  end

end while is_running == true