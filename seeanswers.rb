
class SeeAnswers
  def initialize(answers)
    @answers = answers
    seeing
  end

  def seeing
    puts @answers
    EightBall.new(@answers)
  end
end