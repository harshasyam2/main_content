class Order < ActiveRecord::Base
  def order_display
    "#{id}.  #{billamount}"
  end
end
