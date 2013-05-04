class Order < ActiveRecord::Base
  attr_accessible :customer_address, :customer_email, :customer_fname, :customer_lname, :customer_phone, :delivered_at, :ordered_at, :product_id, :status
  validates :customer_fname, 
                  :presence => {:message => 'First name cannot be blank'}
  validates :customer_lname, 
                  :presence => {:message => 'Last name cannot be blank'}
  validates :customer_address, 
                  :presence => {:message => 'Address cannot be blank'}
  validates :customer_email, 
                  :presence => {:message => 'Email cannot be blank'}
  validates :customer_phone, 
                  :presence => {:message => 'Phone cannot be blank'}
  validates :product_id, 
                  :presence => {:message => 'Product cannot be blank'}
  validates_format_of :customer_phone, 
                   :with => /\A[0-9]{10}\Z/
  validates_format_of :customer_email, 
                  :with => /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i
  validates_format_of :customer_fname,
                  :with => /^[^0-9`!@#\$%\^&*+_=]+$/
  validates_format_of :customer_lname,
                  :with => /^[^0-9`!@#\$%\^&*+_=]+$/

end
