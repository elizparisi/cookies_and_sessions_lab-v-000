class ProductsController < ApplicationController 
  
  def index 
  
  end 
  
  def add 
    @product = Product.find(params[:id])
    cart << @product.id
    session[:cart] = cart
  end 
  
    render :index
end 