class PagesController < ApplicationController

  def home
    @products = Product.order(id: :desc).limit(6)
  end


  def about
  end

  def contact
  end

end
