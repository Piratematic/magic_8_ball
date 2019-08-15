class Asking
  def initialize(answers)
    @answers = answers
    start
  end
  
  def start
    print "> "
    gets.strip
    # binding.pry
    puts @answers.sample
  end
end