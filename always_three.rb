var = my_number
puts "Enter a number"
  my_number = gets my_number.to_i
  my_number1 = my_number + 5
  my_number1 = my_number1 * 2
  my_number1 = my_number1 - 4
  my_number1 = my_number1 / 2
final_answer = my_number1 - my_number 
puts "Always #{final_answer}"

# refactored to be a method

def third_charm 
  puts "Enter a number" 
  my_number = gets.to_i
  puts "Always " + (((my_number + 5)*2 -4) / 2 - my_number).to_s
end

third_charm

# refactored to accept an argument 


def third_charm(my_number) 
  my_number =  (((my_number + 5)*2 -4) / 2 - my_number)
end
  puts "Enter a number" 
  first_number = gets.to_i
  puts "Always " + third_charm(first_number).to_s
