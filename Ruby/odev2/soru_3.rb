print "Dört Basamaklı Sayının İlk Rakamını Giriniz: "
a1 = gets.chomp.to_s

print "Dört Basamaklı Sayının İkinci Rakamını Giriniz: "
b1 = gets.chomp.to_s

print "Dört Basamaklı Sayının Üçüncü Rakamını Giriniz: "
c1 = gets.chomp.to_s

print "Dört Basamaklı Sayının Dördüncü Rakamını Giriniz: "
d1 = gets.chomp.to_s

ab = a1 + b1

cd = c1 + d1

abcd = a1 + b1 + c1 + d1

x = ab.to_i + cd.to_i

x2 = x ** 2

if (x2 == abcd.to_i)
    then puts "Girilen sayı #{abcd}, ikiye ayrılmış durumda #{ab} ve #{cd}, #{x} ^ 2 = #{x2} olmaktadır.
Sayı Köksal Sayıdır."
    else puts "Girilen sayı #{abcd}, ikiye ayrılmış durumda #{ab} ve #{cd}, #{x} ^ 2 = #{x2} olmaktadır.
Sayı Köksal Sayı değildir."
end