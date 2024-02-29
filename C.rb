a = gets.chomp
a = a.to_i
(0...a).each do |data|
    data = gets.chomp.split(" ")
    result = data[0].to_i * data[1].to_i
    if result > 99999
        puts "SI"

    elsif result <100000 && result > 9999
        puts "NO"
    else
        puts "SI"
    end
end