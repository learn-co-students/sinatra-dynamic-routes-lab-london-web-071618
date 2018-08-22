require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
  	@name = params[:name].reverse 
  	"#{@name}"
  end

  get '/square/:number' do 
  	@number_sqrd = params[:number].to_i.abs2
  	"#{@number_sqrd}"
  end

  get '/say/:number/:phrase' do
  	@number = params[:number].to_i
  	@phrase = params[:phrase]
  	# string = "" 
  	# @number.times do
  	# 	string += "#{@phrase}"
  	# end
  	# string
  	@phrase*@number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  	@word1 = params[:word1] 
  	@word2 = params[:word2] 
  	@word3 = params[:word3] 
  	@word4 = params[:word4] 
  	@word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    operations = {add: "+", subtract: "-", divide: "/", multiply: "*"}
    pair = operations.select do |k,v|
      k == @operation.to_sym
    end

    "#{@number1.send(pair.values[0], @number2)}"
  end
end

