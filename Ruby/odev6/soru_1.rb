# frozen_string_literal: true

text = File.readlines('Cümleler.txt')

puts '\'Cümleler.txt\' dosyası açıldı.'

SOZLUK = {}
txt1 = []
n1 = 1

text.each do |txt|
  txt1 = txt.split(' ')
  txt1.each do |txt2|
    txt3 = txt2.downcase
    unless SOZLUK.key? txt3.to_s
      SOZLUK[txt3.to_s] = n1.to_s
      n1 += 1
    end
  end
end

puts 'Sözlük oluşturuldu.'

SOZLUK['OOV'] = n1.to_s

puts "Sözlüğün sonuna cümlelerde bulunmayan kelimeler için \'OOV\' eklenmiştir."

print "Cümleler ve vektörlendirilmiş hali için \'Y\' giriniz: "
gt1 = gets.chomp.to_s.upcase

while gt1 != 'Y'
  print "\'#{gt1}\'! Lütfen \'Y\' giriniz: "
  gt1 = gets.chomp.to_s
end

text.each do |txt4|
  sz1 = []
  txt5 = txt4.split(' ')
  txt5.each do |txt6|
    txt7 = txt6.downcase
    if SOZLUK.key? txt7.to_s
      sz2 = SOZLUK[txt7]
      sz1 << sz2
    else
      sz2 = SOZLUK['OOV']
      sz1 << sz2
    end
  end
  puts "#{txt4} => #{sz1}"
end

print 'Vektör olarak karşı gelecek cümle girin: '
gt2 = gets.chomp

gt3 = gt2.lines

gt3.each do |txt8|
  sz3 = []
  txt9 = txt8.split(' ')
  txt9.each do |txt10|
    txt11 = txt10.downcase
    if SOZLUK.key? txt11.to_s
      sz4 = SOZLUK[txt11]
      sz3 << sz4
    else
      sz4 = SOZLUK['OOV']
      sz3 << sz4
    end
  end
  puts "#{txt8} => #{sz3}"
end
