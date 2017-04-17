class CardsController < ApplicationController
  def create
    @category = Category.find(params[:category_id])
    @card = @category.cards.create(card_params)
    redirect_to category_path(@category)
  end
  
  def answer
    @card = Card.find(params[:id])
  end
 
  private
    def card_params
      params.require(:card).permit(:front, :back)
    end
end
