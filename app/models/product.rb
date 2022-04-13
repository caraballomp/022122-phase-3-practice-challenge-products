class Product < ActiveRecord::Base
        has_many :user
        has_many :user, through: :reviews    
    end
