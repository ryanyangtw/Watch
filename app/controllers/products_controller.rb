class ProductsController < ApplicationController
  before_action :find_product, only: :show

  def show
  end



  private

  def find_product
    @product = Product.includes(:brand, :banners, :display_photo).find_by(slug: params[:id])
  end

end
