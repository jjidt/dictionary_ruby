require "./lib/Term"

system("clear")
loop do
puts "****************DICTIONARY******************"
puts "\nwhat would you like to do?"
puts "\nEnter N to create a new dictionary item"
puts "\nEnter L to List all dictionary items"
puts "\nEnter X to exit"
  user_selection = gets.chomp.downcase
  if user_selection == "n"
    system("clear")
    puts "\nwhat is the word you would like to add?"
    new_word = gets.chomp
    puts "\nwhat is the definition of #{new_word}?"
    new_definition = gets.chomp
    new_term = Term.new({:word => new_word, :def => new_definition})
    puts "\nWORD:  #{new_term.word}     DEFINITION:  #{new_term.def}"
  elsif user_selection == "l"
    system("clear")
    puts "WORDS: \n \n"
    puts Term.terms.keys
    puts "\n\n\n"
  elsif user_selection == "x"
    break
  end
end
