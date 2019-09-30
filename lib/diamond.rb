class Diamond
  def build(letter)
    letters = ('A'..letter).to_a
    
    size = letters.length

    diamond = []
    diamond << ('_' * (size - 1) + 'A' + '_' * (size - 1) + "\n")
    i = 1
    while i < size
      diamond << ('_' * (size - i - 1)) + letters[i] + ('_' * ((i * 2) - 1)) + letters[i] + ('_' * (size - i - 1)) + "\n"
      i += 1
    end
    i -= 2
    while i > 0
      diamond << ('_' * (size - i - 1)) + letters[i] + ('_' * ((i * 2) - 1)) + letters[i] + ('_' * (size - i - 1)) + "\n"
      i -= 1
    end
    diamond << '_' * (size - 1) + 'A' + '_' * (size - 1) + "\n" unless size == 1
    diamond.join('')
  end
end
