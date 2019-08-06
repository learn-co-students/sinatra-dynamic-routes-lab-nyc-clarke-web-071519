require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do 
    name = params[:name]
    "#{name.reverse}"
  end 

  get "/square/:number" do 
    num = params[:number].to_i
    square = num ** 2
   "#{square}"
  end 

  get "/say/:number/:phrase" do 
    num = params[:number].to_i
    phr = params[:phrase]
      phr * num
  end


  get "/say/:word1/:word2/:word3/:word4/:word5" do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]

    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end 

  get "/:operation/:number1/:number2" do
    first_num = params[:number1].to_i
    second_num = params[:number2].to_i
    op = params[:operation]

    if op == "add"
      "#{(first_num + second_num)}"
    elsif op == "subtract"
       "#{(first_num - second_num)}"
    elsif op == "multiply"
        "#{(first_num * second_num)}"
    elsif op == "divide"

        "#{(first_num / second_num)}"
    end 
  end 

end