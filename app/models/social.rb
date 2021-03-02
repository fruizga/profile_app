class Social < ApplicationRecord
  belongs_to :user, optional: true
  validates :name, presence: true
  validates :link, presence: true
  validates :user_id, presence: true
  
end
