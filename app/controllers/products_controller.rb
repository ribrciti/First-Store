class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  # Loads up the view of the same name after the action has executed
  # which is the file:  app/views/products/index.html.erb
  # This view now has access to the @product varialble
  def show
    @product = Product.find(params[:id])
  end
  # This show def will load the show view with the instance variables called.

  def new
    @product = Product.new
  end
  # This new def will load the new view with the instance variables called.

  def create
     @product = Product.new(product_params)
     if @product.save
      redirect_to action: :index
    else
      render :new
    end
  end   #No create views are available.  We either redirect or render the new view.

  def edit
     @product = Product.find(params[:id])
  end     #Loads: app/views/products/edit.html.erb 

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to @product
    else
     render :edit
    end
  end     # We either redirect or render the edit view.

  def destroy
  end

private
  def product_params
    params.require(:product).permit(:title, :description, :price, :stock_quantity)
  end
end

 