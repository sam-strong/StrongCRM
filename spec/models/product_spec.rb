require 'spec_helper'

describe Product do

  let!(:product) {Product.create do |x|
    x.name = "Product 1"
    x.description = "mr salesman"
    x.price = 20
  end}

  it 'has a name' do
    product.name.should eq "Product 1"
  end

  it 'has a description' do
    product.description.should eq "mr salesman"
  end

  it 'has a price' do
    product.price.should eq 20
  end

end