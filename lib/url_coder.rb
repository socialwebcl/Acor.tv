class UrlCoder
  def self.encode_base(number, lookup= ('0'..'9').to_a + ('a'..'z').to_a + ('A'..'Z').to_a)
    r = []

    while number > lookup.length do
        r.unshift lookup[number % lookup.length]
        number = number / lookup.length
    end
    r.unshift lookup[number]
    r.join
  end

  def self.decode_base(string, lookup= ('0'..'9').to_a + ('a'..'z').to_a + ('A'..'Z').to_a)
    reverse = Hash[*lookup.each_with_index.collect { |x, i| [x,i] }.flatten]

    n = 0
    m = 1

    string.reverse.each_char{ |i|
        n = n+reverse[i]*m
        m = m * reverse.length
    }

    return n
  end
end
