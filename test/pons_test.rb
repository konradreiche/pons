require 'minitest/autorun'
require 'Pons'

class PonsTests < MiniTest::Unit::TestCase

  def test_positive
    commands = Pons.translate_string_commands("Hello Berlin!")
    assert_equal ["input text Hello", "input keyevent KEYCODE_SPACE",
      "input text Berlin!"], commands
  end

end
