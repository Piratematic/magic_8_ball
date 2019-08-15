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
  "It is certain".colorize(:red),
  "It is decidedly so".colorize(:light_blue),
  "Without a doubt".colorize(:light_green),
  "Yeah - for sure".colorize(:light_black),
  "You can rely on it".colorize(:green),
  "I see it as a yes".colorize(:light_yellow),
  "Most likely".colorize(:light_green),
  "Outlook Good".colorize(:lighht_magenta),
  "Signs point to yes".colorize(:light_blue),
  "The future is haze lets talk in the future".colorize(:light_black),
  "Try again".colorize(:magenta),
  "I dont think I should tell you the answer".colorize(:cyan),
  "I dont think it is a great idea".colorize(:yellow),
  "I'm not to certain".colorize(:blue),
  "Hard pass".colorize(:red),
  "I'm not saying no but probably not".colorize(:yellow),
  "Think about it some more and ask again later".colorize(:cyan),
  "Pick the one that you wanted when you hit the button and knew what you wanted the outcome to be".colorize(:magenta)
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