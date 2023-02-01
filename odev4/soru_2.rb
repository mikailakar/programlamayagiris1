a1 = 10
b1 = 10
c1 = 0

puts "Uykucunun yöntemi ile sadeleştirilebilen kesirler: "

while a1 < 99
    b1 = a1 + 1

    while b1 < 100
        s1 = a1.fdiv(b1).to_f

        s2 = a1.fdiv(10).to_i
        s3 = b1.fdiv(10).to_i
        s4 = (s3 * 10).to_f
        s5 = b1 - s4

        s6 = s2 / s5

        y1 = a1 - s2 * 10
        y2 = s3

        if s1 == s6 && y1 == y2
            puts "#{a1} / #{b1} = #{s2} / #{s5.to_i}"
            c1 += 1
        end

        b1 += 1
    end
    
    a1 += 1
end

puts "Toplam #{c1} tane kesir bulundu."

# a1 (pay)
# b1 (payda)
# s1 (payın paydaya bölümü)
# s6 (payın onlar basmağının paydanın birler basamağına bölümü)
# y1 (payın birler basmağı)
# y2 (paydanın onlar basmağı)
# c1 (bulunan kesir sayacı)