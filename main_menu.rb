require_relative 'addr_entry'

def run_menu()
  menu = [
    "\n--- MENU ---",
    "1. Create new entry",
    "2. View existing entry",
    "3. Delete existing entry",
    "4. Quit Application"
  ]

  puts menu
  print "\nPlease enter the number for your selection: "
  gets.chomp.to_i # don't need .chomp/#CHOMP, as it were

end

def view_shortlist(a_book)
  ### interate through all entries and print shortlist
  a_book.each_with_index do |entry, i|
    puts "#{i}   #{ entry.last_name }, #{entry.first_name}"
  end

  ### and one more value at the end to quit out
  puts "#{a_book.size} > Quit to Menu"

end

def view_entry(addr_entry)
  puts
  puts "--- --- --- --- ---"
  puts "First Name:    #{addr_entry.first_name}"
  puts "Last Name:     #{addr_entry.last_name}"
  puts "Phone Number:  #{addr_entry.phone_num}"
  puts "Email:         #{addr_entry.email}"
  puts "--- --- --- --- ---"
  puts
end