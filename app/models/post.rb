class Post < ApplicationRecord
  belongs_to :category
  belongs_to :account
  belongs_to :genre
  belongs_to :instrument
  validates :genre, presence: true
  validates :instrument, presence: true
  validates :title, presence: true, length: { minimum: 3 }
  validates :content, presence: true, length: { maximum: 500 }

end
