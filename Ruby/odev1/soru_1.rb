puts "Kurus miktari giriniz (1 ile 99 arasinda)"
print
kurus = gets.chomp.to_i
print "Girilen miktar = "
puts kurus
puts "Girdiginiz kurus miktari asagidaki gibi gosterilebilir."

puts

puts kurus.to_s + " kurusun esiti:"

if(kurus >= 50)
    then t1 = kurus.fdiv(50).to_i ; k1 = t1 ; kurus = kurus - 50 * t1
    else k1 = 0
end

if(kurus >= 10)
    then t2 = kurus.fdiv(10).to_i ; k2 = t2 ; kurus = kurus - 10 * t2
    else k2 = 0 
end

if(kurus >= 5)
    then k3 = 1 ; kurus = kurus - 5
    else k3 = 0
end

if(kurus >= 1)
        then k4 = kurus.to_i
        else k4 = 0
end

puts k1.to_s + " tane 50 kurus"
puts k2.to_s + " tane 10 kurus"
puts k3.to_s + " tane 5 kurus"
puts k4.to_s + " tane 1 kurus"