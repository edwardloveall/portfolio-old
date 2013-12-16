class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = find_category
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to categories_path, notice: 'Category created'
    else
      render :new
    end
  end

  def edit
    @category = find_category
  end

  def update
    @category = find_category

    if @category.update(category_params)
      redirect_to categories_path, notice: 'Category updated'
    else
      render :edit
    end
  end

  def destroy
    @category = find_category
    @category.destroy

    redirect_to categories_path, notice: 'Category destroyed'
  end

  private

  def category_params
    params.require(:category).permit(:title, :position)
  end

  def find_category
    Category.find(params[:id])
  end
end
