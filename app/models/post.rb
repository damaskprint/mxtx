class Post < ApplicationRecord
  belongs_to :category
  belongs_to :account
  belongs_to :genre
  belongs_to :city

  has_and_belongs_to_many :instruments

  validates :genre, presence: true
  validates :title, presence: true, length: { minimum: 3, maximum: 100 }
  validates :content, presence: true, length: { maximum: 1000 }
  validate  :clean_post

  def clean_post
    profanity_filter = LanguageFilter::Filter.new matchlist: :profanity
    sj = Swearjar.default

    if profanity_filter.match? title then
      errors.add(:title, "contains language violation.")
    end

    if profanity_filter.match? content then
      errors.add(:content, "contains language violation.")
    end

    profanity_filter = LanguageFilter::Filter.new matchlist: :hate
    if profanity_filter.match? title then
      errors.add(:title, "contains language violation.")
    end

    if profanity_filter.match? content then
      errors.add(:content, "contains language violation.")
    end

    profanity_filter = LanguageFilter::Filter.new matchlist: :sex
    if profanity_filter.match? title then
      errors.add(:title, "contains language violation.")
    end

    if profanity_filter.match? content then
      errors.add(:content, "contains language violation.")
    end

    
    if sj.profane?(:content) == true then
      errors.add(:content, "contains language violation.")
    end



  end

  #validate_language :content, matchlist: :profanity, matchlist: :hate, matchlist: :sex
  #validate_language :title, matchlist: :profanity, matchlist: :hate, matchlist: :sex
end
