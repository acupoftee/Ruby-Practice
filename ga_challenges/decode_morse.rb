def decode_morse(morse_code)
    # 1. split the string by spaces
    # 2. map each character to their letter
    # 3. append characters
    # 4. return word
    words = morse_code.split('   ')
    words.map! { |word| map_letters(word) }
    words.join(' ')
  end
  
  # Helper function to decode one word
  def map_letters(word)
    letters = word.split
    letters.map! { |letter| MORSE_CODE[letter] || '*' }
    letters.join
  end