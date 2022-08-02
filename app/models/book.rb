class Book < ApplicationRecord
    #validates :book_name, presence: true
    validates :book_name, acceptance: true
end
