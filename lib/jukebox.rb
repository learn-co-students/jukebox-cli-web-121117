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

def list(songs)
  songs.each.with_index { |song, idx| puts "#{idx+1}. #{song}" }
end

def play(songs)
  puts "Please enter as song name or number:"
  song = gets.chomp

  if songs.include?(song)
    puts "Playing #{song}"
  elsif song.to_i.between?(1,9)
    puts "Playing #{songs[song.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  until command == "exit"
    case command
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    end
    command = gets.chomp
  end
  exit_jukebox
end
