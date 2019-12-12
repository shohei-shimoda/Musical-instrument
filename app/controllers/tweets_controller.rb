class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text, :video)
  end

end