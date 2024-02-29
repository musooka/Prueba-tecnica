sub_1 = gets.chomp
sub_2 = gets.chomp
data_1 = sub_1.split(" ")
data_2 = sub_2.split(" ")
x_1 = data_1[0].to_f
y_1 = data_1[1].to_f
z_1 = data_1[2].to_i
x_2 = data_2[0].to_f
y_2 = data_2[1].to_f
z_2 = data_2[2].to_i
cartesian_distance = Math.sqrt((x_1 - x_2)**2 + (y_1 - y_2)**2)
radius_sum = z_1 + z_2

if cartesian_distance <= radius_sum
    puts "SI"
else
    puts "NO"
end