a = gets.chomp
number = a.to_i
sum = (number*(number +1))/2

m = Array.new(number) do |row| 
    Array.new(number) do |col| 
        if (row == col)
            number - row
        elsif (col > row)
            0
        elsif (col < row)
            1
        end
    end
end
m = m.transpose.map(&:reverse)
m.each do |a|
    a.each do |value|
        print value
        print " "
    end
    puts " "
end
puts sum