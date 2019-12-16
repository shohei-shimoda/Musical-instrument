class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params) 
    redirect_to root_path, notice: 'グループを作成しました'  #create画面に飛ばず、直接rootに戻るコード
  end

  def piano
    @tweets = Tweet.where(instrument_ids: '1').order("created_at DESC").page(params[:page]).per(5)
  end

  def guitar
    @tweets = Tweet.where(instrument_ids: '2').order("created_at DESC").page(params[:page]).per(5)
  end

  def bass
    @tweets = Tweet.where(instrument_ids: '3').order("created_at DESC").page(params[:page]).per(5)
  end

  def violin
    @tweets = Tweet.where(instrument_ids: '4').order("created_at DESC").page(params[:page]).per(5)
  end

  def others
    @tweets = Tweet.where(instrument_ids: '5').order("created_at DESC").page(params[:page]).per(5)
  end


    private
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text, :video, :instrument_ids)
  end

end