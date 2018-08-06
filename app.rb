require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].split("").reverse.join("")
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i**2
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase_return = []
    @number.times do
      @phrase_return << @phrase
    end
    return @phrase_return.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = []
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @phrase << @word1
    @phrase << @word2
    @phrase << @word3
    @phrase << @word4
    @phrase << @word5
    @phrase = @phrase.join(" ") + "."
    "#{@phrase}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
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
