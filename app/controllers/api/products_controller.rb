class Api::ProductsController < ApplicationController
  def index
    the_id = params[:product_id]
    @product = Product.find_by(id: the_id)
    render 'index.json.jbuilder'
  end

  def indices
    @products = Product.all
    render 'indices.json.jbuilder'
  end
end
