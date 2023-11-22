class StaticPagesController < ApplicationController
  def home
    @mogis = Mogi.all
    @mogis_last = Mogi.order(created_at: :desc).limit(5)
  end
end
