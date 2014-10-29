###class for all entries in AddressBook(array)
###
class Info_Entry

  attr_accessor :first_name, :last_name, :phone_num, :email

  def initialize(first_name, last_name, phone_num, email)
    @first_name = first_name
    @last_name  = last_name
    @phone_num = phone_num
    @email = email
  end

end

### Methods
###
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
  gets.chomp # don't need .chomp/#CHOMP, as it were

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
##########

# address_book = []

address_book = [
  Info_Entry.new("Hammad", "Malik", "30145", "asdf@blah.com"),
  Info_Entry.new("Son", "Goku", "12341230", "oower@saiyan"),
  Info_Entry.new("Sallie", "Mae", "3qwer4", "asdof@bills")
]
is_running = true

puts "\nWelcome to your new Address Book\u2122" # (trademark symbol)"
# woooooah it actually made a comment that it's the trademark symbol, at least I don't think I copied that over

begin 
  m_select = run_menu().to_i # menu_selection is kinda long

  if m_select == 1
    puts "\n- Creating New Entry -"
    create_entry(address_book)

  elsif m_select == 2
    puts "\n- Viewing Entries -"
    is_selecting = true
    begin

      view_shortlist(address_book)

      print "\nEnter a number to see the full entry: "
      entry_select = gets.chomp

      if entry_select.to_i == address_book.size
        puts "* Returning to Menu"
        is_selecting = false

      elsif (entry_select != "0" and entry_select.to_i == 0)

        puts "** Invalid Selection. Returning to Menu **"
        is_selecting = false 
      else
        puts "test #{entry_select.to_i}\n\n"
      end
    

    end while is_selecting == true

  elsif m_select == 3
    puts "\n- Deleting Entries -"
  elsif m_select == 4
    puts "\nThank you for using Address Book\u2122. \nALL data will be deleted...until I do the stretch goals)\n\n"
    exit 
  else 
    puts "\n** Invalid Selection **"
  end

end while is_running == true