require "colorize"
require "pry"
require_relative "asking"
require_relative "addanswer"
require_relative "seeanswers"

answers = [
  "Yes".colorize(:green),
  "No".colorize(:red),
  "Maybe".colorize(:yellow),
  "I'd pass Mercury is in retregrade".colorize(:magenta),
  "Do it, what is the worst that could happen?".colorize(:blue),
  "Why not?".colorize(:magenta),
  "I'd say pass".colorize(:cyan),
  "I don't know why you're asking me this".colorize(:light_black),
]

# class Asking
#   def initialize(answers)
#     @answers = answers
#     start
#   end
  
#   def start
#     print "> "
#     choice = gets.strip
#     case choice
#       when "add_answer"
#         AddAnswer.new(@answers)
#       when "show_me"
#         SeeAnswers.new(@answers)
#       else
#         @answers.sample
#       end
     
#   end
# end

# class AddAnswer
#   def initialize(answers)
#     @answers = answers
#     adding
#   end

#   def adding
#     puts "Add new answer".colorize(:magenta)
#     print "> ".colorize(:magenta)
#     @answers << gets.strip
#     EightBall.new(@answers)
#   end

# end

# class SeeAnswers
#   def initialize(answers)
#     @answers = answers
#     seeing
#   end

#   def seeing
#     puts @answers
#     EightBall.new(@answers)
#   end
# end

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