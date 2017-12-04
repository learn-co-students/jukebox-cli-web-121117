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
songs.each_with_index do | song, idx |
  puts "#{idx + 1}. #{song}"
  end
end

def play(songs)
results = nil
puts "Please enter a song name or number:"
users_response = gets.chomp
songs.each_with_index do |song, idx|
  if users_response == song || users_response.to_i == idx + 1
    results = "Playing #{song}"
  end
end
  if results == nil
    puts "Invalid input, please try again"
  else
    puts results
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
help
loop do
  puts "Please enter a command:"
  response = gets.chomp
  case response
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      break
    end
  end
exit_jukebox
end
