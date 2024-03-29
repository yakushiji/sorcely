class SessionsController < ApplicationController
  def new
  end

  def create
    user = login(params[:email], params[:password], params[:remember_me])
    if user
      redirect_back_or_to root_url, :notice =>"Successfully log in!"
    else
      falsh.now.alert = "Email or Password was invalid"
    end
  end

  def destroy
    logout
    redirect_to root_url, :notice=>"Logged out!"
  end
end
