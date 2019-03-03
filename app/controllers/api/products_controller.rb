class Api::ProductsController < ApplicationController
  def index
    @product = Product.first
    render 'index.json.jbuilder'
  end

  def indices
    @products = Product.all
    render 'indices.json.jbuilder'
  end
end
