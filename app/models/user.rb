class User < ApplicationRecord
        validates :email, uniqueness: true, presence: true
        validates :username, presence: true
        validates :firstname, presence: true
        validates :lastname, presence: true
        validates :bio, presence: true

        has_many :socials
end
