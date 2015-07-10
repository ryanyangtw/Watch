class Admin::SubscribersController < AdminController
  before_action :find_subscriber, only: :destroy

  def index
    @subscribers = Subscriber.order(id: :desc).paginate(:page => params[:page], :per_page=>50)
  end


  def destroy
    if @subscriber.destroy
      flash[:notice] = "成功刪除訂閱者"
      redirect_to admin_subscribers_path
    else 
      flash[:error] = "刪除訂閱者失敗"
      redirect_to :back
    end
  end



  private

  def find_subscriber
    @subscriber = Subscriber.find(params[:id])
  end

end
