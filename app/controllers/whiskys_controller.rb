class WhiskysController < ApplicationController
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
    @whisky = Whisky.new(title: "...", body: "...")

    if @whisky.save
      redirect_to @whisky
    else
      render :new
    end
  end
end
