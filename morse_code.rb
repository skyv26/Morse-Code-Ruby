# rubocop:disable Metrics/MethodLength
# get each character
$code_dict = {
  'a' => '.-',
  'b' => '-...',
  'c' => '-.-.',
  'd' => '-..',
  'e' => '.',
  'f' => '..-.',
  'g' => '--.',
  'h' => '....',
  'i' => '..',
  'j' => '.---',
  'k' => '-.-',
  'l' => '.-..',
  'm' => '--',
  'n' => '-.',
  'o' => '---',
  'p' => '.--.',
  'q' => '--.-',
  'r' => '.-.',
  's' => '...',
  't' => '-',
  'u' => '..-',
  'v' => '...-',
  'w' => '.--',
  'x' => '-..-',
  'y' => '-.--',
  'z' => '--..',
  ' ' => ' ',
  '1' => '.----',
  '2' => '..---',
  '3' => '...--',
  '4' => '....-',
  '5' => '.....',
  '6' => '-....',
  '7' => '--...',
  '8' => '---..',
  '9' => '----.',
  '0' => '-----'
}

#get each character
def decode_char(mychar)
 return  $code_dict.key(mychar).upcase
end


#get each word
def decode_morse_words(codes)
 codelist = codes.split(' ')
 word = codelist.map { |code|
  decode_char(code)
 }
  word.join
end

#combine words in message
def morse_message(code)
 codelist = code.split('  ')
 message = codelist.map { |code|
  decode_morse_words(code)
 }
 message.join(' ')
end

# Returns A BOX FULL OF RUBIES
puts morse_message(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")

