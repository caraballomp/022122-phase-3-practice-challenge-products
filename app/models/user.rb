class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews
end

# User#favorite_product
# returns the product instance that has the highest star rating from this user
# User#remove_reviews(product)
# takes a Product (an instance of the Product class) and removes all of this user's reviews for that product
# you will have to delete any rows from the reviews table associated with this user and the product