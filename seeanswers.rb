
class SeeAnswers
  def initialize(answers)
    @answers = answers
    seeing
  end

  def seeing
    puts @answers
    sleep (5)
    EightBall.new(@answers)
  end
end