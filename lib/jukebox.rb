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
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(playlist)
  puts "Please enter a song name or number:"
  selection = gets.chomp
  if playlist.include?(selection)
    puts "Playing #{selection}"
  elsif (selection.to_i > 0 && selection.to_i <= playlist.length)
    puts "Playing #{playlist[selection.to_i - 1]}"
  else
    puts "Invalid input, please try again"
    #play(playlist)
  end
end

def list(playlist)
  playlist.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(playlist)
  help
  puts "Please enter a command:"
  input = ""
  while input
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when "help"
      help
    when "play"
      play(songs)
    when "list"
      list(songs)
    when "exit"
      exit_jukebox
      break
    else
      puts "Please enter a command:"
      input = gets.chomp
    end
  end
end

