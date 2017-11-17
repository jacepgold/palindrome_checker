require 'colorize'

@reversed = []
@input_down
@input = ''
done = false


def checker
  count = 0
  while count < @input_down.length do
    @reversed.push(@input_down[count])
    puts "Reversed is #{@reversed[count]}"
    count++
  end
  
  if @input == @reversed
    puts "#{@input} reversed is #{@reversed}"
    puts "You have a Palindrome!".colorize(:green)
  else
    puts "No Match...".colorize(:red)
  end
end


while done == false
  puts 'Enter a word'.colorize(:light_blue)
  print '> '
  @input = $stdin.gets.strip
  @input_down = @input.downcase
  @input.strip()
  if @input_down == 'exit'
    puts "Thanks for playing!"
    done = true
  end
  
  checker
  done = true
end