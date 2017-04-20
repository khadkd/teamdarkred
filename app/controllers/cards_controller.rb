class CardsController < ApplicationController
  def create
    @category = Category.find(params[:category_id])
    @card = @category.cards.create(card_params)
    redirect_to category_path(@category)
  end
  def show
    @category = Category.find(params[:category_id])
    @card = Card.find(params[:id])
  end
  
  def answer
    
    @category = Category.find(params[:category_id])
   
    @card = @category.cards.find(params[:id])
  end
  
  def next_card
     @category = Category.find(params[:category_id])
    @cards = Card.all
    @card=@cards.shuffle.first
    render 'show'
  end
 
  private
    def card_params
      params.require(:card).permit(:front, :back,:card_back,:category_id,:category_id2)
    end
end
