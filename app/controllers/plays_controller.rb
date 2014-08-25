class PlaysController < ApplicationController
  include PlaysHelper

  def index
    @plays = Play.all
  end

  def new
    @play = Play.new
  end

  def create
    @message = ""
    @play = Play.new(play_params)

    if @play.word_valid?
      @play.save
      redirect_to plays_path
    else
      @message = 'blank'
      render new_play_path
    end
  end
end
