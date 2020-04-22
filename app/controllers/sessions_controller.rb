class SessionsController < ApplicationController
  def new
    render "new"
  end

  def create
    customer = Customer.find_by(email: params[:email])
    if customer && customer.authenticate(params[:password])
      render plain: "Correct Password"
    else
      render plain: "Incorrect Password"
    end
  end
end
