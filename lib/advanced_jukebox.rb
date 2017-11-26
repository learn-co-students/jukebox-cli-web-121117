
my_songs = {
"Go Go GO" => '/Users/Randles/Development/code/jukebox-cli-web-121117/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/Randles/Development/code/jukebox-cli-web-121117/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/Randles/Development/code/jukebox-cli-web-121117/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/Randles/Development/code/jukebox-cli-web-121117/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/Randles/Development/code/jukebox-cli-web-121117/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/Randles/Development/code/jukebox-cli-web-121117/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/Randles/Development/code/jukebox-cli-web-121117/audio/Emerald-Park/07.mp3'
}

def list(my_songs)
  my_songs.collect { |key, value| puts key}
end


def play(my_songs)
  puts "Please enter a song name or number:"
  selection = gets.chomp
  found = false
  my_songs.each do |title, path|
    if title == selection
      system "open #{path}"
      found = true
    end
  end
  if found == false
    puts "Invalid input, please try again"
  end
  
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
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
      play(my_songs)
    when "list"
      list(my_songs)
    when "exit"
      exit_jukebox
      break
    else
      puts "Please enter a command:"
      input = gets.chomp
    end
  end
end
