require "colorize"
require "pry"

answers = [
  "Yes",
  "No",
  "Maybe",
  "I'd pass Mercury is in retregrade",
  "Do it, what is the worst that could happen?",
  "Why not?",
  "I'd say pass",
  "I don't know why you're asking me this",
]

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

class EightBall
  def initialize(answers)
    @answers = answers
    # binding.pry
    menu
  end

  def menu
    puts "--- Main Menu ---".colorize(:blue)
    puts "1) Ask the Magical Ball of forsight a question.".colorize(:yellow)
    puts "2) Add a new question.".colorize(:cyan)
    puts "3) See all current answers.".colorize(:green)
    puts "4) Exit".colorize(:red)
    print "> "
    choice = gets.to_i
    case choice
      when 1
        Asking.new(@answers)
      when 2
        AddAnswer.new(@answers)
      when 3
        SeeAnswers.new(@answers)
      when 4
        exit
      else puts "Please enter a valid selecton."
        sleep(2)
        `clear`
        menu
      end
  end
end

EightBall.new(answers)