# TOP Project: Caeser Cipher

def caeser_cipher(string, shift)
  plaintext_array = string.split('')

  ciphertext_array = plaintext_array.map do | character |
    if /[a-z]/.match?(character)
      offset = 97
      character = ((((character.ord - offset) + shift) % 26) + offset).chr
    elsif /[A-Z]/.match?(character)
      offset = 65
      character = ((((character.ord - offset) + shift) % 26) + offset).chr
    end

    character
  end

  ciphertext_array.join('')
end

# Begin script
print "Enter your plaintext: "
input_string = gets.chomp
print "Enter your desired shift (0..26): "
shift = gets.chomp.to_i

puts "\nCiphertext:\n#{caeser_cipher(input_string, shift)}"
