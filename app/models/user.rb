class User < ApplicationRecord
        has_many :socials, dependent: :destroy
        accepts_nested_attributes_for :socials,
          reject_if: proc { |attr| attr['name'].blank? },
          reject_if: proc { |attr| attr['link'].blank? },
          allow_destroy: true

        validates :email, uniqueness: true, presence: true
        validates :username, presence: true
        validates :firstname, presence: true
        validates :lastname, presence: true
        validates :bio, presence: true

        
        
end
