class Words::SearchesController < ApplicationController
  def index
    @words = Word.search(params[:keyword])
  end
end
