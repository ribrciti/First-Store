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
  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  def product_params
    params.require(:product).permit(:title)
  end
end

 