class CaesarCipher
  def initialize(key = 0)
    @key = key
    @chars_downcase = Hash.new do |hash, key|
      hash[key] = ((((key.ord + @key) - 97) % 26) + 97).chr
    end
    @chars_upcase = Hash.new do |hash, key|
      hash[key] = ((((key.ord + @key) - 65) % 26) + 65).chr
    end
  end

  def encrypt(text)
    text.chars.map do |c|
      next @chars_downcase[c] if ('a'..'z').include? c
      next @chars_upcase[c] if ('A'..'Z').include? c
      c
    end.join('')
  end
end

size = gets
string = gets
key = gets.to_i
cipher = CaesarCipher.new(key)
puts cipher.encrypt(string)