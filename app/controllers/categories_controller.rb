class CategoriesController < ApplicationController
    def index
    @categories = Category.all
    end
    def show
    @cateogry = Category.find(params[:id])
    end
    def new
    end
    def create
        @cateogry = Category.new(category_params)
        if @category.save
            redirect_to @categroy
        else
            render 'new'
        end
    end
    private
  def category_params
    params.require(:cateogry).permit(:title, :description)
  end
end
