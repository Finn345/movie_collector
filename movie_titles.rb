movies = Hash.new

puts "What would you like to do?"
choice = gets.chomp.downcase
case choice
when "add"
  puts "What movie?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What is the rating?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts"The movie #{title} with the rating #{rating} has been added"
  else
    puts "This movie already exists!"
  end
when "update"
  puts "Enter the title: "
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Theres an error, its not found!"
  else
    puts "Whats the new rating?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "The movie #{title} has been updated with the new rating of #{rating}"
  end
when "display"
  movies.each do |title, rating|
    puts "#{title}: #{rating}"
  end
when "delete"
  puts "What movie do you want to delete? "
  title = gets.chomp
  if movies[title.to_i].nil?
    puts "Error, the movie is not found"
  else
    movies.delete(title.to_sym)
    puts "The movie #{title} has been deleted"
  end
else
  puts "Error!"
end