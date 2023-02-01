print "Yaşınızı Giriniz: "
y = gets.chomp.to_i

print "Kilonuzu Giriniz (kg): "
k = gets.chomp.to_i

print "Boyunuzu Giriniz (m): "
b = gets.chomp.to_f

b2 = b ** 2

vki = k.fdiv(b2)

if (y <= 17) && (y >= 13) && (vki <= 24.99) && (vki >= 18.5)
    then puts "Vücut kitle indeksiniz #{vki} ve askeri lise için uygunsunuz."
    else puts "Vücut kitle indeksiniz #{vki} ve askeri lise için uygun değilsiniz."
end

# if (y <= 17) && (y >= 13)
#     then y2 = 1
#     else y2 = 0
# end

# if (vki <= 24.99) && (vki >= 18.5)
#     then vki2 = 1
#     else vki2 = 0
# end