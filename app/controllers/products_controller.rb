class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  # Loads up the view of the same name after the action has executed
  # which is the file:  app/views/products/index.html.erb
  # This view now has access to the @product varialble
  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
