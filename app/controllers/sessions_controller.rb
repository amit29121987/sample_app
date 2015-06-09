class SessionsController < ApplicationController
  def new

  end

  def create

      user=User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        #sign in successfull
        flash[:success] = "Login Successfull"
        log_in user
        redirect_to user
      else
        #signin UnSuccessfull
        flash[:danger]= "Invalid email or Password"
        render 'new'
      end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
