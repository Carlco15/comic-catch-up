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

  def thor
    @comic15 = Comic.find(15)
    @comic16 = Comic.find(16)
    @comic17 = Comic.find(17)
    @comic18 = Comic.find(18)
    @comic19 = Comic.find(19)
    @comic20 = Comic.find(20)
    @comic21 = Comic.find(21)
  end

  def hulk
    @comic22 = Comic.find(22)
    @comic23 = Comic.find(23)
    @comic24 = Comic.find(24)
    @comic25 = Comic.find(25)
    @comic26 = Comic.find(26)
    @comic27 = Comic.find(27)
  end

  def ant_man
    @comic28 = Comic.find(28)
    @comic29 = Comic.find(29)
    @comic30 = Comic.find(30)
    @comic31 = Comic.find(31)
    @comic32 = Comic.find(32)
    @comic33 = Comic.find(33)
    @comic34 = Comic.find(34)
  end

  def black_panther
    @comic35 = Comic.find(35)
    @comic36 = Comic.find(36)
    @comic37 = Comic.find(37)
    @comic38 = Comic.find(38)
    @comic39 = Comic.find(39)
    @comic40 = Comic.find(40)
    @comic41 = Comic.find(41)
    @comic42 = Comic.find(42)
  end
end
