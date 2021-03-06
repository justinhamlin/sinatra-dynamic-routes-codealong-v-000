require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
    get "/goodbye/:name" do
      @user_name = params[:name]
      "Goodbye #{@user_name}!"
    end

  get "/multiply/:num1/:num2" do
    @num1 = params[:num1]
    @num2 = params[:num2]
    "The answer is #{@num1} * #{@num2} = 25"
  end

end
