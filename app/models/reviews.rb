class Reviews < ActiveRecord::Base
    belongs_to :products
    belongs_to :user

    def puts_review

    end

end