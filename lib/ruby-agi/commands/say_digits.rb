
module AGI
  #
  # method to read a variable
  #
  # <b>Parameters</b>
  # - name	: name of the variable to read
  #
  # <b>Returns</b>
  # - ReturnStatus object
  #  

  #
  # Usage: SAY DIGITS <number> <escape digits>
  #	Say a given digit string, returning early if any of the given DTMF digits are received on the channel. 
  # Returns 0 if playback completes without a digit being pressed, 
  # or the ASCII numerical value of the digit if one was pressed or -1 on error/hangup.
  #
  def self.say_digits(number, escape_digits)
    self.logger :info, "AGI::say_digits"
    cmd = "SAY DIGITS #{number.to_s} #{escape_digits.to_s} "
    self.exec_command(cmd, SayDigits)
  end
end
