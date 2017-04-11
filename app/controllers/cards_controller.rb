
class CardsController < ApplicationController
     
    def index
        
    end
    
    def prequestion
        
    end
    
    def learning
        
    end
    
    def viewanswer
        @card = Card.find(params[:id])
    end
    
    def newquestions
        
    end
    
    def knewanswer
        
    end
    
    def didnotknow
        
    end
    
    
  def create
    @category = Category.find(params[:category_id])
    @card = @category.cards.create(card_params)
    redirect_to category_path(@category)
  end
 
  private
    def card_params
      params.require(:card).permit(:front, :back)
    end
end
