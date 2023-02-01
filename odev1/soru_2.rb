puts "Ilk dogru icin bilgileri giriniz : "
print "a1 = "
a1 = gets.chomp.to_i
print "b1 = "
b1 = gets.chomp.to_i
print "c1 = "
c1 = gets.chomp.to_i

puts "Ilk dogruya ait bilgiler " + "a1 = " + a1.to_s + " b1 = " + b1.to_s + " c1 = " + c1.to_s

print "Ikinci dogru icin c2 bilgisini giriniz : "
c2 = gets.chomp.to_i

a2 = a1
b2 = b1

puts "Ikinci dogruya ait bilgiler " + "a2 = " + a2.to_s + " b2 = " + b2.to_s + " c2 = " + c2.to_s

d = c1 - c2
e = d.abs.to_f

f = a1**2 + b1**2
g = Math.sqrt(f).to_f

k = e.fdiv(g)

puts "Iki dogru arasindaki uzaklik = " + k.to_s