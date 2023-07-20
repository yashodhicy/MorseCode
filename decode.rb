MORSE_CODE = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
               '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
               '..' => 'I', '.---'  => 'J', '-.-'   => 'K', '.-..'  => 'L',
               '--' => 'M', '-.'    => 'N', '---'   => 'O', '.--.'  => 'P',
               '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
               '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
               '-.--' => 'Y', '--..' => 'Z' }.freeze

def decode_char(char)
  MORSE_CODE[char] || ''
end

def decode_word(word)
  morse_code_letters = word.split
  decoded_word = ''
  morse_code_letters.each do |letter|
    decoded_word += decode_char(letter)
  end
  decoded_word
end

def decode_message(message)
  morse_code_words = message.split('  ')
  decoded_message = ''
  morse_code_words.each do |word|
    decoded_message += "#{decode_word(word)} "
  end
  decoded_message
end


puts decode_char('.-')
puts decode_word('-- -.--')
puts decode_message('-- -.--   -. .- -- .')
puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
