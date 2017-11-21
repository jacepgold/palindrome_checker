require 'colorize'
require 'pry'

@reversed = []
@input = ''
done = false

def checker
  count = 0
  @input.split('')
  while count < @input.length
    @reversed[count] = @input[@input.length - count - 1]
    count += 1
  end

  count = 0
  while count < @input.length 
    if @input[count] == @reversed[count]
      puts "You have a Palindrome!".colorize(:green)
      break
    else
      puts "No Match...".colorize(:red)
      break
    end
  end
end



puts 'Enter a word'.colorize(:light_blue)
print '> '
@input = $stdin.gets.strip.downcase
@input.gsub(" ", "").split("")
@input.strip()
if @input == 'exit'
  puts "Thanks for playing!"
  done = true
end

checker
done = true