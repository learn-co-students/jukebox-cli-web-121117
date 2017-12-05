songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help: displays this help message"
  puts "- list: displays a list of songs you can play"
  puts "- play: lets you choose a song to play"
  puts "- exit: exits this program"
end

def list(array)
  array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(array)
    puts "Please enter a song name or number:"
    song_choice= gets.chomp
    song = ""

    if array.include?(song_choice)
        puts "Playing #{song_choice}"
        song = song_choice
      elsif song_choice.to_i >= 1 && song_choice.to_i <= array.size
        song = array[song_choice.to_i-1]
        "Playing #{song}"
      else
        puts "Invalid input, please try again"
    end
    puts "#{song}"
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  help
  puts "Please enter a command: "
  user_input = ""

  while user_input
    user_input = gets.downcase.chomp
    if user_input == "list"
      list(array)
    elsif user_input == "play"
      play(array)
    elsif user_input == "help"
      help
    elsif user_input == "exit"
      exit_jukebox
      break
    else
      help
    end
  end
end









#def run(my_songs)
#    help

#    input = ""
#    while input
#        puts "Please enter a command:"
#        input = gets.downcase.strip
#        case input
#            when 'list'
#            list(my_songs)
#            when 'play'
#            list(my_songs)
#            play(my_songs)
#            when 'help'
#            help
#            when 'exit'
#            exit_jukebox
#            break
#            else
#            help
#        end
#    end
#end
