class Post < ApplicationRecord
  belongs_to :category
  belongs_to :account
  validates :title, presence: true, length: { minimum: 3 }
  validates :content, presence: true, length: { maximum: 500 }

end
