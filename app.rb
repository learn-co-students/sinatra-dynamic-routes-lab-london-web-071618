require_relative 'config/environment'

require 'pry'
class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
  end

  get '/square/:number' do
    (@number = params[:number].to_i ** 2).to_s
  #  @square = @number ** 2
  #  "#{@square}"
  end

  get '/say/:number/:phrase' do
    #we have a string of 3
    #we have a string "show me the money"
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @say = @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # binding.pry
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]
    @phrase = "#{@word_1} " "#{@word_2} " "#{@word_3} " "#{@word_4} " "#{@word_5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == 'add'
      "#{@number1 + @number2}"
    elsif @operation == "subtract"
      "#{@number1 - @number2}"
    elsif @operation == "multiply"
      "#{@number1 * @number2}"
    elsif @operation == "divide"
      "#{@number1 / @number2}"
    end
  end
end
