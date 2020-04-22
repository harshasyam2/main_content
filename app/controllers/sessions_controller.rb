class SessionsController < ApplicationController
  skip_before_action :ensure_user_logged_in

  def new
    render "new"
  end

  def create
    customer = Customer.find_by(email: params[:email])
    if customer && customer.authenticate(params[:password])
      session[:current_user_id] = customer.id
      redirect_to "/"
    else
      render plain: "Incorrect Password"
    end
  end

  def destroy
    session[:current_user_id] = nil
    @current_user_id = nil
    redirect_to "/"
  end
end
