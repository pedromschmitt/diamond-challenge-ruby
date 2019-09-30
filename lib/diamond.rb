class Diamond

  def build(letter)
    diamond_letters = ("A"..letter).to_a
    size = diamond_letters.length.to_i
    
    d = []
    d << ('_' * (size - 1) + 'A' + '_' * (size - 1) + "\n")
    i = 1
    while i < size
      d << ('_' * (size - i - 1)) + diamond_letters[i].to_s + ('_' * ((i * 2) - 1)) + diamond_letters[i].to_s + ('_' * (size - i - 1)) + "\n"
      i += 1
    end
    i -= 2
    while i > 0
      d << ('_' * (size - i - 1)) + diamond_letters[i].to_s + ('_' * ((i * 2) - 1)) + diamond_letters[i].to_s + ('_' * (size - i - 1)) + "\n"
      i -= 1
    end
    d << '_' * (size - 1) + 'A' + '_' * (size - 1) + "\n" unless size == 1
    return d.join('')
  end
end
