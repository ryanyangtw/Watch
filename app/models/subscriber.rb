class Subscriber < ActiveRecord::Base

  after_save :subscribe

  validates :email, presence: true


  def subscribe
    @list_id = "ad841c87fa"
    gb = Gibbon::API.new
    
    gb.lists.subscribe({
      :id => @list_id,
      :email => {:email => self.email}
    })
  end

  def created_today?
    self.created_at.to_date == Date.today
  end

end
