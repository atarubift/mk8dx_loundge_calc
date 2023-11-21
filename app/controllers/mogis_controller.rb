class MogisController < ApplicationController

  def index
    @mogis = Mogi.all
  end

  def new
    @mogis = Mogi.new
    12.times { @mogis.mogi_results.build }
  end

  def create
    @mogis = Mogi.new(mogis_params)
    if @mogis.save
      redirect_to mogis_path
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
