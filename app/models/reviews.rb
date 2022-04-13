class User < ActiveRecord::Base
    belongs_to :products
    belongs_to :user
end