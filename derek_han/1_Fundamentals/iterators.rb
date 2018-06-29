# .any?{|obj| block } => true or false
puts [ "ant", "bear", "cat"].any?{ |word| word.length >= 4}

# .each 
puts ["ant", "bear", "cat"].each{|word| print word, "--"}.to_s
# how to get output of array

# .collect{ |obj| block}
puts (1..4).collect {|i| i*i }.to_s

puts (1..4).collect { "cat" }.to_s

# .detect/.find
puts (1..10).detect{ |i| i %5 == 0 and i %7 == 0 }
puts (1..100).detect{ |i| i %5 ==0 and i %7 == 0 }

# .find_all{ |obj| block } or .sellect{ |obj| block }

puts (1..10).find_all{ |i| i%3 ==0 }.to_s

# .reject{ |obj| block }
puts (1..10).reject{ |i| i%3 ==0 }.to_s

# .upto(limit)
puts 5.upto(10) { |i| print i, " "}
sum = 0
puts "!!!", (1..255).each{ |i| sum = sum + i}
puts "Sum: ", sum

