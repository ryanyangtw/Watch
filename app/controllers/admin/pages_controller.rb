class Admin::PagesController < AdminController
  def search
    @q = Product.ransack(params[:q]) 
    @products = Product.none
  end
end