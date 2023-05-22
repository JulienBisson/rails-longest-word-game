require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10).join(' ')
  end

  def score
    @attempt = params[:score]
    @grid = params[:letters].chars

    url = "https://wagon-dictionary.herokuapp.com/#{@attempt}" # STRING
    user_serialized = URI.open(url).read # STRING
    @user = JSON.parse(user_serialized) # HASH
    @answer = @attempt.chars.all? { |letter| @grid.include?(letter) }
    # itérer sur mon attempt
    # a chaque lettre je vérifie si appartient bien à grid



  end
end
