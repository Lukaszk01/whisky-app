class WhiskysController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @whiskys = Whisky.all
  end
  def show
    @whiskys = Whisky.find(params[:id])
  end
  def new
    @whisky = Whisky.new
  end

  def create
    @whisky = Whisky.new(whisky_params)
    if @whisky.save
      redirect_to @whisky
    else
      render :new
    end
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  private
  def whisky_params
    params.require(:whisky).permit(:title, :body)
  end
end
