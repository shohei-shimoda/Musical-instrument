class InstrumentsController < ApplicationController

  def index
    # @instruments = @tweet.instrument_ids.includes(:tweet)
    @instruments = instrument.all.includes(:tweets)
  end

  def show
   
  end

  private
  def instrument_params
    params.require(:instrument).permit(:ids)
  end

end
