class Admin::BrandsController < AdminController

  def index

  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private
  def find_brand
  end

  def brand_params
    params.requre(:brand).permit(:title, :description)
  end


end
