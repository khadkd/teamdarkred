class CardsController < ApplicationController
  def create
    @category = Category.find(params[:category_id])
    @card = @category.cards.create(card_params)
    redirect_to category_path(@category)
  end
  def show
    @card = Card.find(params[:id])
  end
  
  def answer
   @card_back = params[:card_back]
   
   redirect_to card_answer_path()
  
  end
  
  def next_card
    @cards = Card.all
    @card=@cards.shuffle.first
    render 'show'
  end
 
  private
    def card_params
      params.require(:card).permit(:front, :back,:card_back)
    end
end
