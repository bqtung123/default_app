class Book < ApplicationRecord
  belongs_to :user
  validates_presence_of :title
  validates :description, length: { maximum: 500 }
end
