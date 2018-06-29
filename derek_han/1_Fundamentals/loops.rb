$i = 0
$num = 5
begin
	puts "Inside the loop i = #{$i}"
	$i +=1

	puts "$i is not 3" unless $i==3
		
end	while $i < $num




for i in 0..5
	puts "Value of local variable is #{i}"

	puts "i is now 3!!!" if i==3
end




#While loop
i = 0
num = 5
while i < num do
	puts "Inside the loop i = #{i}"
	i += 1
end




i = 0
num = 5
while i < num do
	puts "Inside2 the loop i = #{i}"
	i += 1
	break if i == 2
end




for i in 0..5
	puts "Value of local variable is #{i}"
end




for i in 0..5
	puts "Value2 of local variable is #{i}"
	break if i == 3
end




for i in 0..5
	next if i == 2 ; next i == 4 ; next i == 5
	puts "Value3 of local variable is #{i}"
end


