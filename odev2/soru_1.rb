print "Ara Sınav Puanını Giriniz: "
v = gets.chomp.to_i.fdiv(10) * 3

print "Quiz Puanını Giriniz: "
q = gets.chomp.to_i.fdiv(10)

print "Devamlılık Puanını Giriniz: "
d = gets.chomp.to_i.fdiv(10)

print "Final Puanını Giriniz: "
f = gets.chomp.to_i.fdiv(2)

ortalama = v + q + d + f

if (ortalama <= 59)
    then not1 = "F"
    elsif (ortalama <= 69)
        then not1 = "D"
    elsif (ortalama <= 79)
        then not1 = "C"
    elsif (ortalama <= 89)
        then not1 = "B"
    else not1 = "A"
end

puts "Ortalamanız #{ortalama} ve harf notunuz #{not1}’dir."