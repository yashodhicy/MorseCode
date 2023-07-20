def decode_message(morse_code_message)
  morse_code_dictionary = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
                            '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
                            '..' => 'I', '.---'  => 'J', '-.-'   => 'K', '.-..'  => 'L',
                            '--' => 'M', '-.'    => 'N', '---'   => 'O', '.--.'  => 'P',
                            '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
                            '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
                            '-.--' => 'Y', '--..' => 'Z' }

  morse_code_words = morse_code_message.split('   ')
  decoded_message = ''
  morse_code_words.each do |word|
    morse_code_letters = word.split(' ')
    morse_code_letters.each do |letter|
      decoded_message += morse_code_dictionary[letter]
    end
    decoded_message += '   '
  end
end

result = decode_message('-- -.--   -. .- -- .')
puts result

result = decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
puts result
