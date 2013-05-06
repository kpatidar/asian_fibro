class OrderNotifications < ActionMailer::Base
  def get_order(order)
    @order = order
    mail(:to => "kplguru07@gmail.com", :from => "kplguru07@gmail.com", :subject => "Asian Fibro Plast Order from #{@order.customer_fname}")
  end
end
