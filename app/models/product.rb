class Product < ActiveRecord::Base
        has_many :user
        has_many :user, through: :reviews    
    end

#     Product#leave_review(user, star_rating, comment)
# takes a User (an instance of the User class), a star_rating (integer), and a comment (string) as arguments, and creates a new Review in the database associated with this Product and the User
# Product#print_all_reviews
# should puts to the terminal a string representing each review for this product
# each review should be formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}
# Product#average_rating
# returns a float representing the average star rating for all reviews for this product