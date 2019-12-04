class User < ApplicationRecord
    has_many :activities
    
    validates :username, uniqueness: true, presence: true
    validates :password, presence: true, length: { in: 6..20 }

    has_secure_password
    
end
