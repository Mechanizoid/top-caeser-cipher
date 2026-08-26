# caeser_cipher_test.rb
require 'minitest/autorun'
require_relative 'caeser_cipher'

class CaeserCipherTest < Minitest::Test
  def test_string_1
    assert_equal("Bmfy f xywnsl!", caeser_cipher("What a string!", 5))
  end

  def test_string_2
    assert_equal("KHOOR", caeser_cipher("HELLO", 3))
  end

  def test_string_3
    assert_equal("qigvunm yun zlocn", caeser_cipher("wombats eat fruit", 20))
  end

  def test_string_4
    plaintext = "If he had anything confidential to say, he wrote it in " \
                "cipher, that is, by so changing the order of the letters" \
                " of the alphabet, that not a word could be made out."
    ciphertext = "Pm ol ohk hufaopun jvumpkluaphs av zhf, ol dyval pa pu " \
                 "jpwoly, aoha pz, if zv johunpun aol vykly vm aol slaalyz"\
                 " vm aol hswohila, aoha uva h dvyk jvbsk il thkl vba."

    assert_equal(ciphertext, caeser_cipher(plaintext, 7))
  end

  def works_with_zero_shift
    assert_equal("Bob plays the harmonica well?", caeser_cipher("Bob plays the harmonica well?", 0))
  end

  def works_with_shift_of_26
    assert_equal("This string is unchanged?", caeser_cipher("This string is unchanged?", 26))
  end
end
