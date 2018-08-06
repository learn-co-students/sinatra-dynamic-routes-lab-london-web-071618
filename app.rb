require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do 
    @reversed = params[:name].reverse 
    "#{@reversed}"
  end 
  
  get '/square/:number' do 
    @squared = params[:number].to_i ** 2 
    "#{@squared}"
  end 
  
  get '/say/:number/:phrase' do 
    @phrase = params[:phrase]
    @number = params[:number].to_i
    answer = ""
    @number.times do 
      answer += @phrase
    end
    answer
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @phrase = params[:word1] + " " + params[:word2] + " " +  params[:word3] + " " + params[:word4] + " " + params[:word5]
    "#{@phrase}."
  end 

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case @operation
    when "add"
      @answer = @number1 + @number2
    when "subtract"
      @answer = @number1 - @number2
    when "multiply"
      @answer = @number1 * @number2
    when "divide"
      @answer = @number1 / @number2
    end
    erb :operation
  end 
end