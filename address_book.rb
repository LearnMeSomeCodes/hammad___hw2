require_relative 'library'

address_book = []

address_book = [
  Info_Entry.new("Hammad", "Malik", "30145", "asdf@blah.com"),
  Info_Entry.new("Son", "Goku", "12341230", "oower@saiyan"),
  Info_Entry.new("Sallie", "Mae", "3qwer4", "asdof@bills")
]
is_running = true

puts "\nWelcome to your new Address Book\u2122" # (trademark symbol)"
# woooooah it actually made a comment that it's the trademark symbol, at least I don't think I copied that over

begin 
  m_select = run_menu # menu_selection is kinda long

  if m_select == 1
    puts
    puts "- Creating New Entry -"

    puts "> Enter First Name"
    f =gets.chomp

    puts "> Enter Last Name"
    l = gets.chomp
    puts "> Enter Phone Number"
    p = gets.chomp

    puts "> Enter Email"
    e = gets.chomp
    
    ### make new address entry
    address_book.push Info_Entry.new(f, l, p, e)

  elsif m_select == 2
    puts
    puts "- Viewing Entries -"
    is_selecting = true
    begin

      view_shortlist(address_book)

      print "\nEnter a number to see the full entry: "
      entry_select = gets.chomp

      if entry_select.to_i == address_book.size
        puts "* Returning to Menu *"
        is_selecting = false

      elsif (entry_select != "0" and entry_select.to_i == 0)

        puts "** Invalid Selection. Returning to Menu **"
        is_selecting = false 

      else

        view_entry(address_book[entry_select.to_i])

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