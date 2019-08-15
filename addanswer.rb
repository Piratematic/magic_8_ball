class AddAnswer
  def initialize(answers)
    @answers = answers
    adding
  end

  def adding
    puts "Add new answer".colorize(:magenta)
    print "> ".colorize(:magenta)
    @answers << gets.strip
    EightBall.new(@answers)
  end

end