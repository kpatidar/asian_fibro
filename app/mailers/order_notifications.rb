class OrderNotifications < ActionMailer::Base
  def get_order(order)
    @order = order
    to = Rails.env=="production" ? "mohsinkhan183@gmail.com" : "kplguru07@gmail.com"
    mail(:to => to, :from => "kplguru07@gmail.com", :subject => "Asian Fibro Plast Order from #{@order.customer_fname}")
  end
end
