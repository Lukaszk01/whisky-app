class WhiskysController < ApplicationController
  def index
    @whiskys = Whisky.all
  end
  def show
    @whiskys = Whisky.find(params[:id])
  end
end
