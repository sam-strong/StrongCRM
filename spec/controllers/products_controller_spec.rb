require 'spec_helper'

describe ProductsController do
  describe "#create" do
    context "it recieves a valid post request to create" do
      it 'creates a product' do
        post :create, { description: "The first product in the range", name: "Product 1", price: 20}
        assigns(:product).should be_a(Product)
        assigns(:product).should be_persisted
      end

      it 'sends a responce on successful creation' do
        post :create, { :name => "Product 1", :description => "The first product in the range", price: 20}
        response.body.should eq '{"message":"product created"}'
      end
    end
  end
end