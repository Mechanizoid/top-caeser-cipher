# TOP Project: Caeser Cipher

def shift_character(character, shift)
  offset = /[A-Z]/.match?(character) ? 65 : 97

  /[A-Za-z]/.match?(character) ?
    ((((character.ord - offset) + shift) % 26) + offset).chr :
    character
end

def caeser_cipher(string, shift)
  string.chars.map { | character | shift_character(character, shift) }.join
end

if __FILE__ == $0
  print "Enter your plaintext: "
  input_string = gets.chomp
  print "Enter your desired shift (0..26): "
  shift = gets.chomp.to_i

  puts "\nCiphertext:\n#{caeser_cipher(input_string, shift)}"
end
