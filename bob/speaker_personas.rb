require './bob.rb'
class SpeakerPersona
  SPEAKERS = {
    :bob => ::Bob
  }
  def self.choose(persona)
    SPEAKERS[persona].start()
  end
end
