class Tweet < ApplicationRecord
    has_many :retweets, class_name: 'Tweet', foreign_key: 'retweet_id'
    belongs_to :retweet, class_name: 'Tweet', optional: true
    
    
    belongs_to :user
    has_many :likes, dependent: :destroy
    has_many :likes
    has_many :tweets
    has_many :tags
    scope :content, -> (content) { where("content LIKE ?", "%#{content}%") }
    validates :content, presence: true
end
