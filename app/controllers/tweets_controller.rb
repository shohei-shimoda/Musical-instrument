class TweetsController < ApplicationController

  before_action :move_to_index, except: [:index, :show, :piano, :guitar, :bass, :violin, :others]

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

  def show
  end

  def piano
    @tweets = Tweet.where(instrument_id: '1').order("created_at DESC").page(params[:page]).per(5)
  end

  def guitar
    @tweets = Tweet.where(instrument_id: '2').order("created_at DESC").page(params[:page]).per(5)
  end

  def bass
    @tweets = Tweet.where(instrument_id: '3').order("created_at DESC").page(params[:page]).per(5)
  end

  def violin
    @tweets = Tweet.where(instrument_id: '4').order("created_at DESC").page(params[:page]).per(5)
  end

  def others
    @tweets = Tweet.where(instrument_id: '5').order("created_at DESC").page(params[:page]).per(5)
  end


    private
  def tweet_params
    params.require(:tweet).permit(:name, :text, :video, :instrument_id).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end