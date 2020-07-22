class FavoritesController < ApplicationController
  def create
    @word = Word.find(params[:word_id])
    favorite = current_user.favorites.build(word_id: params[:word_id])
    favorite.save
  end

  def destroy
    @word = Word.find(params[:word_id])
    favorite = Favorite.find_by(word_id: params[:word_id], user_id: current_user.id)
    favorite.destroy
  end
end
