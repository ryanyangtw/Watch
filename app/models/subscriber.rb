class Subscriber < ActiveRecord::Base

  after_save :subscribe

  validates :email, presence: true



  def subscribe


    @list_id = "ad841c87fa"
    gb = Gibbon::API.new
    
    binding.pry
    gb.lists.subscribe({
      :id => @list_id,
      :email => {:email => self.email}
    })
  end


end
