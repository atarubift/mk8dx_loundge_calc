class MogisController < ApplicationController

  def index
    @mogis = Mogi.all
  end

  def show
    @mogis = Mogi.find(params[:id])
  end

  def new
    @mogis = Mogi.new
    12.times { @mogis.mogi_results.build }
  end

  def create
    @mogis = Mogi.new(mogis_params)
    mogi_results_attributes = params.require(:mogi).permit(
      mogi_results_attributes: [:track_id, :rank]
      )[:mogi_results_attributes]
    if @mogis.save
      mogi_results_attributes_array = mogi_results_attributes.to_h.map do |index, attributes|
        track_id = attributes[:track_id]
        rank = attributes[:rank]
        track = Track.find(track_id)
        track.increment_rank(rank.to_i)
      end
      redirect_to mogi_path(@mogis)
    else
      puts @mogis.errors.full_messages
      render 'new'
    end
  end

  private

    def mogis_params
      params.require(:mogi).permit(:mogi_type_id, :total_score, :team_rank, :solo_rank, :url, mogi_results_attributes: [:track_id, :rank])
    end
end
