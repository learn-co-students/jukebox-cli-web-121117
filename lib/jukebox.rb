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
  puts "(?=.*help)(?=.*list)(?=.*play)(?=.*exit)"
end

def list(song_array)
  song_array.each_with_index do |item,index|
   puts "#{index+1}. #{item}"
 end
end

def play(song_array)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  song_choice_index = song_choice.to_i - 1
  if song_choice_index.between?(0,8)
    puts "Playing #{song_array[song_choice_index]}"
  elsif song_array.include?(song_choice)
    puts "Playing #{song_choice}"
  else
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
abort("Goodbye")
end
