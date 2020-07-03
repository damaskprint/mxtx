class Post < ApplicationRecord
  belongs_to :category
  belongs_to :account
  belongs_to :genre
  belongs_to :city
  has_and_belongs_to_many :instruments
  validates :genre, presence: true
  validates :title, presence: true, length: { minimum: 3, maximum: 20 }
  validates :content, presence: true, length: { maximum: 1000 }

end
