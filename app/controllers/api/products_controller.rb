class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create
    @product = Product.new(id: params[:input_id], name: params[:input_name], price: params[:input_price], description: params[:input_description], image_url: params[:input_image_url] )
    @product.save
    render 'show.json.jbuilder'
  end

  def update
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    @product.id = params[:id]
    @product.name = params[:name]
    @product.price = params[:price]
    @product.description = params[:description]
    @product.image_url = params[:image_url]
    @product.save
    render 'show.json.jbuilder'
  end

  def destroy
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    @product.destroy
    render 'destroy.json.jbuilder'
  end
end
