class Review < ApplicationRecord
    belongs_to :sellers
    belongs_to :user
end
