#!/usr/bin/env ruby

#input1 = gets.chomp
input1 = "18.9m/s @ 48 N of E"
input1split = input1.split(" ")

v11 = input1split[0].to_f
v12 = input1split[0].to_f
v1a = input1split[2].to_f
d11 = input1split[3].capitalize
d12 = input1split[5].capitalize


#input2 = gets.chomp
input2 = "11m/s @ 30 S of W"
input2split = input2.split(" ")

v21 = input2split[0].to_f
v22 = input2split[0].to_f
v2a = input2split[2].to_f
d21 = input2split[3].capitalize
d22 = input2split[5].capitalize

#impliment cst

#   +N  -S  +E  -W
if d11 == "S"
  v11 = v11 * -1
  puts "1true"
elsif d12 == "S"
  v11 = v11 * -1
  puts "11true"
end

if d11 == "W"
  v12 = v12 * -1
  puts "2true"
elsif d12 == "W"
  v12 = v12 * -1
  puts "22true"
end

if d21 == "S"
  v21 = v21 * -1
  puts "3true"
elsif d22 == "S"
  v21 = v21 * -1
  puts "33true"
end

if d21 == "W"
  v22 = v22 * -1
  puts "4true"
elsif d22 == "W"
  v22 = v22 * -1
  puts "44true"	
end

v1x = v11 * Math.cos(v1a * Math::PI / 180)
v2x = v21 * Math.sin(v2a * Math::PI / 180)
v1y = v12 * Math.sin(v1a * Math::PI / 180)
v2y = v22 * Math.cos(v2a * Math::PI / 180)

puts ""
puts "v1x"
puts v1x
puts "v2x"
puts v2x
puts "v1y"
puts v1y
puts "v2y"
puts v2y

vrx = v1x + v2x
vry = v1y + v2y

puts ""
puts "vrx"
puts vrx
puts "vry"
puts vry

vr = Math.sqrt( vrx.abs2 + vry.abs2 )

puts ""
puts "vr"
puts vr

o = Math.atan( vry.abs / vrx.abs ) / Math::PI * 180

puts ""
puts "Angle"
puts o

puts ""
puts "Answer:"
puts "%sm/s @ %s Degrees" % [vr.round(2), o.round(2)]