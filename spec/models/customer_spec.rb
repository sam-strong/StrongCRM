require 'spec_helper'

describe Customer do

  let!(:customer) {Customer.create do |x|
    x.email = "customer@dealership.com"
    x.name = "mr salesman"
  end}

  it 'has an email' do
    customer.email.should eq "customer@dealership.com"
  end

  it 'has a name' do
    customer.name.should eq "mr salesman"
  end

end