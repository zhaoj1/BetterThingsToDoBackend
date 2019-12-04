class Activity < ApplicationRecord

    belongs_to :user

    validates :user_id, uniqueness: {scope: [:venue_name]}
    
end
