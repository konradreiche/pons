# Encapsulates the tool functionality: translating a string input to
# multiple commands and executing the commands on a subshell.
#
class Pons
  @@keycodes = Hash[
    "#"  => "KEYCODE_POUND",
    " "  => "KEYCODE_SPACE",
    "("  => "KEYCODE_LEFT_BRACKET",
    ")"  => "KEYCODE_RIGHT_BRACKET",
    "\\" => "KEYCODE_BACKSLASH",
    ";"  => "KEYCODE_SEMICOLON",
    "'"  => "KEYCODE_APOSTROPHE"
  ]

  def self.translate_string_commands(input, opts)
    result = input.split(/([#{Regexp.escape @@keycodes.keys.join}])/).map do |str|
      @@keycodes.key?(str) ? "input keyevent #{@@keycodes[str]}" : "input text #{str}" unless str.empty?
    end.compact
    result.unshift("input keyevent KEYCODE_MENU") if opts[:home]
    result
  end

  def self.execute_adb_shell_commands(commands)
    commands.each{ |c| system("adb shell #{c}") }
  end
end
