module PlaysHelper
  def play_params
    params.require(:play).permit(:word)
  end
end
