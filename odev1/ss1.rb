puts "Kurus miktari giriniz (1 ile 99 arasinda)"
print
kurus = gets.chomp.to_i
print "Girilen miktar = "
puts kurus
puts "Girdiginiz kurus miktari asagidaki gibi gosterilebilir."

puts ""

puts kurus.to_s + " kurusun esiti:"

k1 = kurus.fdiv(50).to_i

kurus = kurus - 50 * k1

k2 = kurus.fdiv(10).to_i

kurus = kurus - 10 * k2

k3 = kurus.fdiv(5).to_i

kurus = kurus - 5 * k3

k4 = kurus.fdiv(1).to_i

kurus = kurus - k4

puts k1.to_s + " tane 50 kurus"
puts k2.to_s + " tane 10 kurus"
puts k3.to_s + " tane 5 kurus"
puts k4.to_s + " tane 1 kurus"