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