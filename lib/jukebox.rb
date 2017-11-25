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

def list(playlist)
  playlist.each_with_index do |song,i|
    puts "#{i}. #{song}"
end

def play(playlist)
  puts "Please enter a song name or number:"
  user_response= gets.chomp

    if playlist.includes?(user_response)
      puts "Playing #{user_response}"
    elsif user_response >= 1 && user_response <= playlist.size
      choice= playlist[choice-1]
      "Playing #{choice}"
    else
      puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(playlist)
help
puts "Please enter a command:"
user_input = gets.chomp

  case user_input
  when "help"
    help
  when "list"
    list(playlist)
  when "exit"
    exit_jukebox
    # break
  when playlist.includes?(user_response)
    play(playlist)
  when user_response >= 1 && user_response <= playlist.size
    play(playlist)
  else
    run(playlist)
  end

end


end
