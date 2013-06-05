class CustomersController < ApplicationController

  def create
    @customer = Customer.create do |x|
      x.name = params[:name]
      x.email = params[:email]
    end
    render :json => { :message => "Welcome #{@customer.name}" }
  end
end