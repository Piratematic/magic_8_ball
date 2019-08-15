class Asking
  def initialize(answers)
    @answers = answers
    start
  end
  
  def start
    print "> "
    choice = gets.strip
    case choice
      when "add_answer"
        AddAnswer.new(@answers)
      when "show_me"
        SeeAnswers.new(@answers)
      else
        puts @answers.sample
      end
     
  end
end