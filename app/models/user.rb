class User < ApplicationRecord
        has_many :socials, dependent: :destroy
        
        validates :email, uniqueness: true, presence: true
        validates :username, presence: true
        validates :firstname, presence: true
        validates :lastname, presence: true
        validates :bio, presence: true

        
        
end
