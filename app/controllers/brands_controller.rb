class BrandsController < ApplicationController
  before_action :find_brand, only: :show

  def index
    @brands = Brand.order(id: :asc)
  end

  def show
    @products = @brand.products.order(id: :desc).paginate(:page => params[:page], :per_page => 15)
  end


  private

  def find_brand
    @brand = Brand.includes(:products, :banners, :display_photo).find_by(slug: params[:id])
  end

end
