class Post < ApplicationRecord
  belongs_to :category
  belongs_to :account
  belongs_to :genre
  has_and_belongs_to_many :instruments
  validates :genre, presence: true
 
  validates :title, presence: true, length: { minimum: 3 }
  validates :content, presence: true, length: { maximum: 500 }

end
