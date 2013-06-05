require 'spec_helper'

describe CustomersController do
  describe "#create" do
    context "it recieves a valid post request to create" do
      it 'creates an aristocrat' do
        post :create, { email: "customer@dealership.com", name: "mr salesman" }
        assigns(:customer).should be_a(Customer)
        assigns(:customer).should be_persisted
      end

      it 'sends a responce on successful creation' do
        post :create, { :name => "mr salesman", :email => "customer@dealership.com" }
        response.body.should eq '{"message":"Welcome mr salesman"}'
      end
    end
  end
end