# caeser_cipher_test.rb
require 'minitest/autorun'
require_relative 'caeser_cipher'

class CaeserCipherTest < Minitest::Test
  def test_caeser_cipher
    assert_equal "Bmfy f xywnsl!", caeser_cipher("What a string!", 5)
  end
end
