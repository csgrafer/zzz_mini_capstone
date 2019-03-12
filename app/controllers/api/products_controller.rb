class Api::ProductsController < ApplicationController
  def index
    if params[:search] 
      @products = Product.where("name iLIKE ?", "%#{params[:search]}%")
    else
      @products = Product.all
    end

    if params[:discount] == "true"
      @products = @products.where("price < ?", 10)
    end

    if params[:sort] && params[:sort_order]
      @products = @products.order(params[:sort] => params[:sort_order])
    end
    render 'index.json.jbuilder'
  end

  def show
    @product = Product.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @product = Product.new(
      id: params[:input_id],
      name: params[:input_name],
      price: params[:input_price],
      description: params[:input_description],
      image_url: params[:input_image_url]
      )
    if @product.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder', status: :unprocessible_entity
    end
  end

  def update
    @product = Product.find(params[:id])
    @product.id = params[:id]
    @product.name = params[:name]
    @product.price = params[:price]
    @product.description = params[:description]
    @product.image_url = params[:image_url]
    
    if @product.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder', status: :unprocessible_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render 'destroy.json.jbuilder'
  end
end