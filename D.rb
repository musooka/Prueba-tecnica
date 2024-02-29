a = gets.chomp
a = a.to_i
b = a**2

if a % 10 == b % 10
    puts "SI"
else
    puts "NO"
end