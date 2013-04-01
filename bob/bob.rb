class Bob
  MESSAGES = {
    :start => "What's up dude?",
    :shout => "Woah, chill out!",
    :question => "Sure",
    :statement => "Whatever",
    :nothing => "Fine, Be that way!",
    :see_ya => "See ya, laaaaaater"
  }

  class << self
    def parse_message (message)
      if message.split(" ").last.downcase == "bye"
        see_ya_response
        return true
      end

      if message == message.upcase
        shout_response
        return true
      end

      if message.include?("?")
        question_response
      elsif message == ""
        nothing_response
      else
        statement_response
      end
    end

    def statement_response
      puts MESSAGES[:statement]
      start();
    end

    def shout_response
      puts MESSAGES[:shout]
      start();
    end

    def question_response
      puts MESSAGES[:question]
      start();
    end

    def nothing_response
      puts MESSAGES[:nothing]
      start();
    end

    def see_ya_response
      puts MESSAGES[:see_ya]
    end

    def start
      puts MESSAGES[:start]
      MESSAGES[:start] = "So..."
      @message = gets.chomp()
      parse_message @message
    end
  end
end
