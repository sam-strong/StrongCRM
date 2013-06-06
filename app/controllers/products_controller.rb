class ProductsController < ApplicationController

  def create
    @product = Product.create do |x|
      x.name = params[:name]
      x.description = params[:description]
      x.price = params[:price]
    end
    render :json => { :message => "product created" }
  end

  def show
  end
end