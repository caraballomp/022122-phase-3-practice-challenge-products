class Reviews < ActiveRecord::Base
    belongs_to :products
    belongs_to :user

    def puts_review
        " #{product.id} #{user.id} :  #{star_rating}, #{comment} "
    end