class PagesController < ApplicationController

  def home
    @products = Product.order(id: :desc).paginate(:page => params[:page], :per_page => 15) #.limit(6)
  end


  def about
  end

  def contact
  end

end
