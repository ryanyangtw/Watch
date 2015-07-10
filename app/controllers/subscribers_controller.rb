class SubscribersController < ApplicationController
  
  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      flash[:notice] = "您已成功註冊會員，請前往 Email 確認訂閱電子報，謝謝：）"
      redirect_to new_subscriber_path
    else
      flash.now[:error] = "註冊失敗，請確認欄位沒有空白"
      render :new
    end

  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:name, :line, :email, :phone_number)
  end


end