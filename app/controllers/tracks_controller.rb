class TracksController < ApplicationController
  def index
    @tracks = Track.all
  end

  def show
    @tracks = Track.find(params[:id])
    @ave = @tracks.rank_ave
  end
end
