# encoding: UTF-8
# ----------------------------------------------------------------------------
def solution(n)
    bin = to_binstring(n)
    p = bin.length / 2
    
    period = -1
    while p > 1 do
        pat = "(#{bin[0, p]})(#{bin[0, p]})"
        m = bin.match(pat)
        if m && m.size > 1
            period = p
            break
        end
        p -= 1
    end
    period
end

def to_binstring(n)
    bin = ''
    while n > 0
       bin += (n % 2).to_s 
       n /= 2
    end
    bin.reverse
end

puts solution(955)
puts solution(102)