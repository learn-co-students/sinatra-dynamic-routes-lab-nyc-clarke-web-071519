require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end

  get "/square/:number" do
    @square = params[:number].to_i**2
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @repeat = params[:number].to_i.times.collect {params[:phrase]}.join
    "#{@repeat}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @string = [params[:word1],params[:word2],params[:word3],params[:word4],params[:word5]].join(" ") + "."
    "#{@string}"
  end

  get "/:operation/:number1/:number2" do
    if params[:operation] == "add"
      @sum = params[:number1].to_i + params[:number2].to_i
      "#{@sum}"
    elsif params[:operation] == "subtract"
      @difference = params[:number1].to_i - params[:number2].to_i
      "#{@difference}"
    elsif params[:operation] == "multiply"
      @product = params[:number1].to_i * params[:number2].to_i
      "#{@product}"
    elsif params[:operation] == "divide"
      @quotient = params[:number1].to_i / params[:number2].to_i
      "#{@quotient}"
    end
  end

end