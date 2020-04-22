class CustomersController < ApplicationController
  skip_before_action :ensure_user_logged_in

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
