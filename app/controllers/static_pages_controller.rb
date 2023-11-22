class StaticPagesController < ApplicationController
  def home
    @mogis = Mogi.last(5)
  end
end
