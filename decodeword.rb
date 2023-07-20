def decode_word(morse_code_word)
    morse_code_dictionary = {  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
        '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
        '..' => 'I', '.---'  => 'J', '-.-'   => 'K', '.-..'  => 'L',
        '--' => 'M', '-.'    => 'N', '---'   => 'O', '.--.'  => 'P',
        '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
        '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
        '-.--' => 'Y', '--..' => 'Z'
    }

    morse_code_letters = morse_code_word.split (" ")
    decoded_word = ''
    morse_code_letters.each do |letter|
    decoded_word += morse_code_dictionary[letter]
    end
    return decoded_word
    end

    result = decode_word(" --- -..- ")
    puts result








