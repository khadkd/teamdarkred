class CategoriesController < ApplicationController
    def index
    @categories = Category.all
    end
    def show
    @cateogry = Category.find(params[:id])
    end
    def new
        @category = Category.new
    end
    def create
        @cateogry = Category.new(category_params)
        if @category.save
            redirect_to @categroy
        else
            render 'new'
        end
    end
    def update
        @category = Category.find(params[:id])
 
        if @category.update(category_params)
            redirect_to @category
        else
            render 'edit'
        end
    end
    def destroy
        @category = Category.find(params[:id])
        @category.destroy
 
        redirect_to categories_path
    end
    private
  def category_params
    params.require(:cateogry).permit(:title, :description)
  end
end
