puts "A dizisi için 1 ile 3 arasında bir seçim yapınız: "
print "1:[26, 45, 35, 45, 97], 2:[17, 42, 49, 87, 02], 3:[14, 22, 11, 47, 10]"
secim = gets.chomp.to_i

if secim == 1
   then a1 = [26, 45, 35, 45, 97]                         #A dizisi için 3 farklı küme seçeneği
elsif secim == 2
    then a1 = [17, 42, 49, 87, 02]
elsif secim == 3
    then a1 = [14, 22, 11, 47, 10]
else
    puts "Hatalı giriş!"
end



puts "B dizisi için 1 ile 3 arasında bir seçim yapınız: "
print "1:[11, 89, 36, 61, 46], 2:[39, 65, 59, 93, 99], 3:[72, 65, 96, 39, 71]"
secim2 = gets.chomp.to_i

if secim2 == 1
   then b1 = [11, 89, 36, 61, 46]                         #B dizisi için 3 farklı küme seçeneği
elsif secim2 == 2
    then b1 = [39, 65, 59, 93, 99]
elsif secim2 == 3
    then b1 = [72, 65, 96, 39, 71]
else
    puts "Hatalı giriş!"
end

puts "Seçilen diziler: "
puts "A: #{a1}, B: #{b1}"


c1 = a1 + b1                                             #1-

puts "A ve B dizilerinin birleşimi ile oluşan C dizisi: "
print c1
puts ""

d1 = [a1.max, b1.max]                                    #2-
puts "İki dizinin en büyük elemanları ile oluşan D dizisi: "
print d1
puts ""


c1 = c1.shuffle! << 55                                   #3-
puts "C dizisini rastgele karıştırıp en son indise 55 sayısı eklenen yeni C dizisi: "
print c1
puts ""
c2 = c1[5]
puts "Bu dizinin ortanca elemanı: #{c2}"


d1 = d1.prepend(300).prepend(200).prepend(100)          #4-
puts "D dizinin başına sırasıyla eklenen 100, 200, 300 sayılar ile yeni D dizisi: "
print d1
puts ""


                                                        #Menü
puts "(Yeni bir C dizisi oluşturmak için 1'i, programı sonladırmak için 0'ı tuşlayınız.)"
print "Menü: "
m1 = gets.chomp.to_i

if m1 == 1
    then puts "Yeni bir C dizisi oluşturuluyor."
    c1 = (a1 + b1).shuffle!
    puts "Yeni C dizisi: "
    print c1
    puts ""
    puts "Program bitti."
elsif m1 == 0
    then puts "Program bitti."
else
    puts "Hatalı giriş!"
    puts "Program bitti."
end