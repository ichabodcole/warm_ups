class PsychologyTest
  def initialize
    questions = [
      {q: "Do you like trees?", herring:true},
      {q: "Do you recycle?", herring:true},
      {q: "Do you like ice-cream?", herring:true},
      {q: "Do you enjoy showering?", herring:true},
      {q: "Do you often wear a hat?", herring:false}
    ]
    questions.shuffle!
  end

  def get_question
    q = questions.pop
  end

  def ask
   answer = ask(get_question[:q])
  end
end

