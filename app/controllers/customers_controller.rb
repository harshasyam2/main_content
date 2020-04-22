class CustomersController < ApplicationController
  def new
    render "customers/new"
  end

  def create
    Customer.create!(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
    )
    redirect_to "/"
  end
end
