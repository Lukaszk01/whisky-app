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
  
class whisky_api
  BASE_URL = 
  API_PARTIAL_URL = 
  def quary
    request = HTTParty.get(BASE_URL+@search_format+API_PARTIAL_URL).to_json
    @request_hash = JSON.parse(request)
  end
  
  def initialize(user_search_imput)
    @search_format = ""
  end
end

end
