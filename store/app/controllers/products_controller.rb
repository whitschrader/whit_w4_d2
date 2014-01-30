class ProductsController < ApplicationController
  def index
    @products =Product.all
  end

  def create
    new_product = params.require(:product).permit(:name)
    @product = Product.create(new_product)
    render :show
  end

  def new
    @product = Product.new
  end

  def edit
    id = params[:id]
    @product = Product.find(id)
    @categories = @product.categories
    @all_category_names = Category.all.map {|cat| [cat.name]}
  end

  def update

    new_product = params.require(:product).permit(:name)
    @product = Product.find(params[:id])
    @product.update_attributes(new_product)

    id = params[:id]
    cat = params[:product]["categories"]  # array[0] is nil
    new_cat= cat.select {|c| c!= ""}
    @product = Product.find(id)
            new_cat.each do |x|
            @product.categories << Category.find_by_name(x)
            end
    redirect_to product_path
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to root_path
  end

  def show
    @product = Product.find(params[:id])
    @categories = @product.categories

    @product 
  end
end
