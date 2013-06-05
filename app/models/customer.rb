class Customer < ActiveRecord::Base
  validates :email, :format => {:with => /.+@.+/}
end
