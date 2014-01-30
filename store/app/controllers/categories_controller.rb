class CategoriesController < ApplicationController
  def index
    @categories =Category.all
  end

  def create
    new_category = params.require(:category).permit(:name)
    @category = Category.create(new_category)
    render :show
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    new_category = params.require(:category).permit(:name)
    @category = Category.find(params[:id])
    @category.update_attributes(new_category)
    render :show
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    redirect_to root_path
  end

  def show
    category_id = params[:id]
    @category = Category.find category_id 
  end
end
