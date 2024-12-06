text = []

puts "metin.txt dosyası açılıyor..."

File.open('metin.txt').each_line do |txt| 
    text << txt
end

puts "metin dosyası açıldı."

text1 = []
text2 = []
text3 = []
text4 = []

text[0].to_s.each_char { |txt| text1 << txt}
text[2].to_s.each_char { |txt| text2 << txt}
text[4].to_s.each_char { |txt| text3 << txt}
text[6].to_s.each_char { |txt| text4 << txt}

kalfabe = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z a b c d e f g h i j k l m n o p q r s t u v w x y z]
balfabe = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]

sifre1 = []
sifre6 = []
sifre7 = []
sifre8 = []
s3 = 0

text1.each do |s1|
  s2 = s1.chomp.to_s.split('')
  sifre1[s3] = s2
  s3 += 1
end

s3 = 0

text2.each do |s1|
  s2 = s1.chomp.to_s.split('')
  sifre6[s3] = s2
  s3 += 1
end

s3 = 0

text3.each do |s1|
  s2 = s1.chomp.to_s.split('')
  sifre7[s3] = s2
  s3 += 1
end

s3 = 0

text4.each do |s1|
  s2 = s1.chomp.to_s.split('')
  sifre8[s3] = s2
  s3 += 1
end

print 'Şifreleme için ilerleme belirleyiniz: '
ilerleme = gets.chomp.to_i

z1 = 0
d = 0

sifre2 = []

sifre1.each do |y1|
  if kalfabe.include?(y1[0])
    x1 = kalfabe.index(y1[0])
    x2 = x1 + ilerleme
    sifre2[d] = kalfabe[x2]
    z1 += 1
  elsif balfabe.include?(y1[0])
    x3 = balfabe.index(y1[0])
    x4 = x3 + ilerleme
    sifre2[d] = balfabe[x4]
    z1 += 1
  else
    sifre2[d] = y1[0]
    z1 += 1
  end
  d += 1
end

sifre4 = []

sifre6.each do |y1|
  if kalfabe.include?(y1[0])
    x1 = kalfabe.index(y1[0])
    x2 = x1 + ilerleme
    sifre4[d] = kalfabe[x2]
    z1 += 1
  elsif balfabe.include?(y1[0])
    x3 = balfabe.index(y1[0])
    x4 = x3 + ilerleme
    sifre4[d] = balfabe[x4]
    z1 += 1
  else
    sifre4[d] = y1[0]
    z1 += 1
  end
  d += 1
end

sifre5 = []

sifre7.each do |y1|
  if kalfabe.include?(y1[0])
    x1 = kalfabe.index(y1[0])
    x2 = x1 + ilerleme
    sifre5[d] = kalfabe[x2]
    z1 += 1
  elsif balfabe.include?(y1[0])
    x3 = balfabe.index(y1[0])
    x4 = x3 + ilerleme
    sifre5[d] = balfabe[x4]
    z1 += 1
  else
    sifre5[d] = y1[0]
    z1 += 1
  end
  d += 1
end

sifre9 = []

sifre8.each do |y1|
  if kalfabe.include?(y1[0])
    x1 = kalfabe.index(y1[0])
    x2 = x1 + ilerleme
    sifre9[d] = kalfabe[x2]
    z1 += 1
  elsif balfabe.include?(y1[0])
    x3 = balfabe.index(y1[0])
    x4 = x3 + ilerleme
    sifre9[d] = balfabe[x4]
    z1 += 1
  else
    sifre9[d] = y1[0]
    z1 += 1
  end
  d += 1
end

puts 'Metin şifreleniyor...'

sifre3 = ''

sifre2.each do |d1|
  sifre3 += d1.to_s
end

sifre10 = ''

sifre4.each do |d1|
  sifre10 += d1.to_s
end

sifre11 = ''

sifre5.each do |d1|
  sifre11 += d1.to_s
end

sifre12 = ''

sifre9.each do |d1|
  sifre12 += d1.to_s
end

sifreson = sifre3 + "#{"\n"}" + "#{"\n"}" + sifre10 + "#{"\n"}" + "#{"\n"}" + sifre11 + "#{"\n"}" + "#{"\n"}" + sifre12

puts 'Metin şifrelendi.'

File.write('sifre.txt', sifreson)

puts 'Şifrelenen metine sifre.txt dosyasından ulaşabilirsiniz.'
