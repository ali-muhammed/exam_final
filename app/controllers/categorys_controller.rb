class CategorysController < ApplicationController
  before_action :find_category, only: [:show, :edit, :update, :destroy] 

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
    
      redirect_to categorys_path
    else
      render 'new'
    end
  end 

  def index
    @categorys = Category.all
  end
 
  def destroy
    @category.destroy

    redirect_to categorys_path
  end

  def update

    if @category.update(category_params)
      redirect_to category_path
    else
      render :edit
    end
  end

  private

  def category_params
    params.require(:category).permit(:title) 
  end 

  def find_category
    @category = Category.find(params[:id])
  end
end