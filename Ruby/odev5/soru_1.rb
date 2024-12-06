text = ''

puts '\'metin.txt\' dosyası açılıyor...'

File.open('metin.txt').each_line do |txt|
  text += txt
end

puts '\'metin.txt\' dosyası açıldı.'

text1 = []

text.each_char { |txt| text1 << txt }

kalfabe = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z a b c d e f g h i j k l m n o p q r s t u v w x y z]
balfabe = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]

print 'Şifreleme için ilerleme belirleyiniz: '
ilerleme = gets.chomp.to_i

d = 0
sifre2 = []

text1.each do |y1|
  if y1[0] == '\n'
    sifre2[d] = '\n'
  elsif kalfabe.include?(y1[0])
    x1 = kalfabe.index(y1[0])
    x2 = x1 + ilerleme
    sifre2[d] = kalfabe[x2]
  elsif balfabe.include?(y1[0])
    x3 = balfabe.index(y1[0])
    x4 = x3 + ilerleme
    sifre2[d] = balfabe[x4]
  else
    sifre2[d] = y1[0]
  end
  d += 1
end

puts 'Metin şifreleniyor...'

sifreson = ''

sifre2.each do |d1|
  sifreson += d1.to_s
end

puts 'Metin şifrelendi.'

File.write('sifre.txt', sifreson)

puts 'Şifrelenen metine \'sifre.txt\' dosyasından ulaşabilirsiniz.'

print 'Şifrelenmiş metni orijinale döndürmek için \'Y\' giriniz: '
metin2 = gets.chomp.to_s

if metin2 == 'Y'
  text5 = ''

  puts '\'sifre.txt\' dosyası açılıyor...'

  File.open('sifre.txt').each_line do |txt|
    text5 += txt
  end

  puts '\'sifre.txt\' dosyası açıldı.'

  text6 = []

  text5.each_char { |txt| text6 << txt }

  e = 0
  sifre13 = []

  text6.each do |y1|
    if y1[0] == '\n'
      sifre13[e] = '\n'
    elsif kalfabe.include?(y1[0])
      x1 = kalfabe.index(y1[0])
      x2 = x1 - ilerleme
      sifre13[e] = kalfabe[x2]
    elsif balfabe.include?(y1[0])
      x3 = balfabe.index(y1[0])
      x4 = x3 - ilerleme
      sifre13[e] = balfabe[x4]
    else
      sifre13[e] = y1[0]
    end
    e += 1
  end

  puts 'Şifrelenmiş metni orijinale döndürülüyor...'

  sifreson2 = ''

  sifre13.each do |d1|
    sifreson2 += d1.to_s
  end

  puts 'Şifrelenmiş metni orijinale döndürüldü.'

  File.write('sifre.txt', sifreson2)

  puts 'Şifrelenmiş metni orijinale döndürülmüşe \'sifre.txt\' dosyasından ulaşabilirsiniz.'

else
  puts 'Hatalı giriş!'
end

puts 'Program sona erdi.'
