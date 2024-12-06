puts "A kümesi için 1 ile 3 arasında bir seçim yapınız: "
print "1:[97, 59, 31, 38 ,33], 2:[26, 01, 16, 71, 07], 3:[47, 22, 86, 07, 22]"
secim = gets.chomp.to_i

if secim == 1
   then a1 = [97, 59, 31, 38 ,33]                         #A kümesi için 3 farklı küme seçeneği
elsif secim == 2
    then a1 = [26, 01, 16, 71, 07]
elsif secim == 3
    then a1 = [47, 22, 86, 07, 22]
else
    puts "Hatalı giriş!"
end



puts "B kümesi için 1 ile 3 arasında bir seçim yapınız: "
print "1:[85, 65, 46, 86, 39], 2:[92, 35, 16 ,77, 05], 3:[61, 63, 29, 69, 38]"
secim2 = gets.chomp.to_i

if secim2 == 1
   then b1 = [85, 65, 46, 86, 39]                         #B kümesi için 3 farklı küme seçeneği
elsif secim2 == 2
    then b1 = [92, 35, 16 ,77, 05]
elsif secim2 == 3
    then b1 = [61, 63, 29, 69, 38]
else
    puts "Hatalı giriş!"
end



puts "C kümesi için 1 ile 3 arasında bir seçim yapınız: "
print "1:[61, 63, 19, 69, 38], 2:[51, 27, 06, 90, 71], 3:[14, 82, 98, 75, 21]"
secim3 = gets.chomp.to_i

if secim3 == 1
   then c1 = [61, 63, 19, 69, 38]                         #C kümesi için 3 farklı küme seçeneği
elsif secim3 == 2
    then c1 = [51, 27, 06, 90, 71]
elsif secim3 == 3
    then c1 = [14, 82, 98, 75, 21]
else
    puts "Hatalı giriş!"
end


puts "Seçilen kümeler: "
puts "A: #{a1}, B: #{b1}, C: #{c1}"


e1 = (a1 + b1 + c1).sort!.reverse!                        #Seçilen kümeler farklı bir kümede birleşip küçükten büyüğe sıralanması


puts "Seçilen kümelerin birleşimi ve büyükten küçüğe sıralı şekli: "
print e1