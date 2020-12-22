class WhiskysController < ApplicationController
  def index
    @whiskys = Whisky.all
  end
end
