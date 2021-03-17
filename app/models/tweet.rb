class Tweet < ApplicationRecord
    has_many :retweets, class_name: 'Tweet', foreign_key: 'retweet_id'
    belongs_to :origin, class_name: 'Tweet', optional: true
    
    
    belongs_to :user
    has_many :likes

    validates :content, presence: true
end
