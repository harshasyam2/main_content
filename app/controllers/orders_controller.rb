class OrdersController < ApplicationController
  def index
    render plain: Order.all.map { |order| order.order_display }.join("\n")
  end

  def change
    totalitems = params[:totalitems]
    billvalue = totalitems * 100
    new_order = Order.create!(billamount: billvalue)
    render plain: new_order.order_display
  end
end
