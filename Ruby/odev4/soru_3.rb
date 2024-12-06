renault = 0
mazda = 0
honda = 0
ford = 0
z1 = 0
z2 = 0
z3 = 0
z4 = 0

puts "PROGRAMDAN ÇIKMAK İÇİN MARKA OLARAK 111 GİRİNİZ."
while true
    print "Marka, tutar giriniz: "
    m1 = gets.chomp
    m2 = m1.split( )

    m3 = m2[0].to_i
    m4 = m2[-1].to_f

    if m3 == 1
        renault += m4
        z1 += 1
    elsif m3 == 2
        mazda += m4
        z2 += 1
    elsif m3 == 3
        honda += m4
        z3 += 1
    elsif m3 == 4
        ford += m4
        z4 += 1
    elsif m3 == 111
        puts "PROGRAM SONA ERDİ"
        break
    else
        puts "Hatalı giriş!"
    end
end


y1 = [z1, z2, z3, z4]
y2 = y1.max

if y2 == z1
    y3= "Renault"
elsif y2 == z2
    y3 = "Mazda"
elsif y2 == z3
    y3 = "Honda"
elsif y2 == z4
    y3 = "Ford"
end

puts "En çok gelen araç markası #{y3} (#{y2} kez)."


s1 = [renault, mazda, honda, ford]
s2 = s1.max

if s2 == renault
    s3 = "Renault"
elsif s2 == mazda
    s3 = "Mazda"
elsif s2 == honda
    s3 = "Honda"
elsif s2 == ford
    s3 = "Ford"
end

puts "En çok satış yapılan marka #{s3} (#{s2} TL)."

# renault, mazda, honda, ford (satış sayaçları)
# z1, z2, z3, z4 (geliş sayaçları)