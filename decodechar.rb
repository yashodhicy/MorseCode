class DecodeMorseCode
  MORSE_CODE = Hash[
'.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
'.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
'..' => 'I', '.---'  => 'J', '-.-'   => 'K', '.-..'  => 'L',
'--' => 'M', '-.'    => 'N', '---'   => 'O', '.--.'  => 'P',
'--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
'..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
'-.--' => 'Y', '--..' => 'Z'
]

  def decode_char(char)
    MORSE_CODE[char] || ''
  end
end

decoder = DecodeMorseCode.new
puts decoder.decode_char('..')
