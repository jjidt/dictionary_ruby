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
    puts "Enter a word to get definition/edit"
    user_word = gets.chomp
      if Term.terms[user_word]
        puts "\nWORD:  #{Term.terms[user_word].word}     DEFINITION:  #{Term.terms[user_word].def}"
        puts "\n"
        puts "Enter E to edit definition"
        puts "Enter M to return to main menu"
        puts "Enter D to delete the word"
        user_selection2 = gets.chomp.downcase
        if user_selection2 == "e"
          puts "What is the new definition for #{Term.terms[user_word].word}"
          new_definition = gets.chomp
          Term.terms[user_word].def = new_definition
        elsif user_selection2 == "d"
          Term.terms.delete(user_word)
        end
      end
  elsif user_selection == "x"
    break
  end
end
