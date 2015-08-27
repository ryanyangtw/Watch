class Admin::ProductsController < AdminController

  before_action :find_brand, only: [:index, :new, :create]
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @product = @brand.products.build       
    @display_photo = @product.build_display_photo
  end

  def create
    @product = @brand.products.build(product_params)

    if @product.save
      flash[:notice] = "成功新增一項商品"
      redirect_to admin_brand_path(@product.brand)  # brand show
    else
      flash[:error] = "抱歉，沒有新增成功，請再試一次"
      render :new
    end

  end

  def edit
    @display_photo =  @product.display_photo || @product.build_display_photo
  end


  def update
    if @product.update(product_params)
      flash[:notice] = "修改成功"
      redirect_to admin_brand_path(@product.brand)  # brand show
    else
      flash[:notice] = "修改失敗"
      render :edit
    end
  end

  def destroy

    if @product.destroy
      flash[:notice] = "成功刪除商品"
      redirect_to admin_brand_path(@product.brand) # brand show
    else 
      flash[:error] = "沒有刪除商品"
      redirect_to :back
    end

  end


  private

  def find_brand
    @brand = Brand.find_by( slug: params[:brand_id])
  end

  def find_product
    @product = Product.includes(:banners, :display_photo).find_by(slug: params[:id])
  end

  def product_params
    params.require(:product).permit(:number, :title, :description, :status, :mechanism, :case, :face, :function, :strap, :price, :video_url, :other, :banners_attributes => [:id, :image, :_destroy], :display_photo_attributes => [:id, :image, :_destroy])
  end
end
