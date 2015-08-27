class Admin::BrandsController < AdminController

  before_action :find_brand, only: [:show, :edit, :update, :destroy]


  def index
    @brands = Brand.order(id: :asc) #.paginate(page: params[:page], per_page: 20)
  end

  def show
    @products = @brand.products.order(id: :asc)
  end

  def new
    @brand = Brand.new
    @display_photo = @brand.build_display_photo
    #@brand.addTwoPhotos
  end

  def create
    @brand = Brand.new(brand_params)

    if @brand.save
      flash[:notice] = "成功新增一項品牌"
      redirect_to admin_path
    else
      flash[:error] = "抱歉，沒有新增成功，請再試一次"
      render :new
    end

  end

  def edit
    @display_photo =  @brand.display_photo || @brand.build_display_photo
  end

  def update
    if @brand.update(brand_params)
      flash[:notice] = "修改成功"
      redirect_to admin_path
    else
      flash[:notice] = "修改失敗"
      render :edit
    end
  end

  def destroy
    if @brand.destroy
      flash[:notice] = "成功刪除品牌"
      redirect_to admin_path
    else
      flash[:error] = "沒有刪除品牌"
      redirect_to :back
    end

  end


  private
  def find_brand
    @brand = Brand.includes(:banners, :display_photo).find_by(slug: params[:id])
  end

  def brand_params
    params.require(:brand).permit(:chinese_title, :title, :description, :banners_attributes => [:id, :image, :_destroy], :display_photo_attributes => [:id, :image, :_destroy])
  end


end
