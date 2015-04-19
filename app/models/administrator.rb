class Administrator < ActiveRecord::Base
    has_secure_password validations: false
    validates :account, presence: true, uniqueness: true
    validates :password, presence: true, on: :create, length:{minimum: 3}
end
