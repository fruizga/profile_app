class Social < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :link, presence: true
  validates :user_id, presence: true
end
