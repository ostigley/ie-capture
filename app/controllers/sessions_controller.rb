class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by(mortgage_reference_num: params[:sessions][:mortgage_reference_num].upcase)

    if user && user.authenticate(params[:sessions][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid Mortgage Reference # or Password combination'
      render 'new'
    end
  end
    
end
