class Order < ActiveRecord::Base
  attr_accessible :customer_address, :customer_email, :customer_fname, :customer_lname, :customer_phone, :delivered_at, :ordered_at, :product_id, :status
  validates :customer_fname, :presence => {:message => 'First name cannot be blank'}
  validates :customer_lname, :presence => {:message => 'Last name cannot be blank'}
  validates :customer_address, :presence => {:message => 'Address cannot be blank'}
  validates :customer_email, :presence => {:message => 'Email cannot be blank'}
  validates :customer_phone, :presence => {:message => 'Phone cannot be blank'}
  validates :product_id, :presence => {:message => 'Product cannot be blank'}
end
