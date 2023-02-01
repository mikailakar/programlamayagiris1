a1 = 1.to_f
t1 = 1

while t1 < 11
    b1 = 1 + 1/a1

    puts "Kesirli ifadenin #{t1}. terimi: P#{t1} = #{a1}"

    a1 = b1

    t1 += 1
end

# b1 (terimleri hesaplayan fonksiyon)
# a1 (b1 fonksiyonun değişkeni ve terimlerinin sonucu)
# t1 (döngünün sayacı)