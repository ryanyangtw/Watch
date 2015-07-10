class BrandsController < ApplicationController
  before_action :find_brand, only: :show

  def index
    @brands = Brand.order(id: :asc)
  end

  def show
  end


  private

  def find_brand
    @brand = Brand.includes(:products, :banners, :display_photo).find_by(slug: params[:id])
  end

end
