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
  puts "I accept the following commands: \n - help : displays this help message \n - list : displays a list of songs you can play \n - play: lets you choose a song to play \n - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  songs.each_with_index do |song, index|
    if (response == song) || (response.to_i == (index + 1))
      puts song
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  response = gets.chomp
  case response
  when "list"
    list
  when "play"
    play
  when "exit"
    exit_jukebox
    return
  else
    puts "Please enter a command:"
  end
end
