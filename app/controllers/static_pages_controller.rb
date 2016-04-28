class StaticPagesController < ApplicationController
  def home
    redirect_to user_path(@current_user) if signed_in?
  end

  def spotlight
  end

  def iron_man
    @comic = Comic.find(1)
    @comic2 = Comic.find(2)
    @comic3 = Comic.find(3)
    @comic4 = Comic.find(4)
    @comic5 = Comic.find(5)
    @comic6 = Comic.find(6)
    @comic7 = Comic.find(7)
  end

  def captain_america
    @comic8 = Comic.find(8)
    @comic9 = Comic.find(9)
    @comic10 = Comic.find(10)
    @comic11 = Comic.find(11)
    @comic12 = Comic.find(12)
    @comic13 = Comic.find(13)
    @comic14 = Comic.find(14)
  end
end
