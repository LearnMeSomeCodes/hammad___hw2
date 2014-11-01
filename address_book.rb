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

      print "Enter the number for your selection: "
      entry_select = gets.chomp
      puts

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
    puts
    puts "- Deleting Entries -"
    is_selecting = true

    begin
      view_shortlist(address_book)

      print "Enter the number for your selection: "
      entry_select = gets.chomp
      puts

      if entry_select.to_i == address_book.size
        puts "* Returning to Menu *"
        is_selecting = false

      elsif (entry_select != "0" and entry_select.to_i == 0)

        puts "** Invalid Selection. Returning to Menu **"
        is_selecting = false 

      else

        puts "Now Deleting \"#{address_book[entry_select.to_i].first_name}\" \"#{address_book[entry_select.to_i].last_name}\"    "
        address_book.delete_at entry_select.to_i 

      end

    end while is_selecting == true

  elsif m_select == 4
    puts
    puts "Thank you for using Address Book\u2122. \nALL data will be deleted...until I do the stretch goals :)"
    puts
    exit 
  else 
    puts "\n** Invalid Selection **"
  end

end while is_running == true