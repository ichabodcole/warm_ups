class Grandma
  def initialize
    @message = "";
  end

  def speak_to(message)
    if message == "BYE"
      good_bye
      return true
    end
    if message == message.upcase
      i_heard_you
    else
      speak_up
    end
  end

  def speak_up
    puts "HUH, speak up sonny!!"
    start()
  end

  def i_heard_you
    first_word = @message.split(" ").first
    word_length = first_word.length
    message = first_word.slice(1, word_length)
    puts "#{message}? No, not since 1938."
    start()
  end

  def good_bye
    puts "Good bye sonny!"
  end

  def start
    puts "Grandma is listening"
    @message = gets.chomp()
    speak_to @message
  end
end

