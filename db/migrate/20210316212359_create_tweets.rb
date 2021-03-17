class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.string :content, null: false
      t.references  :user, foreign_key: true
      t.integer :retweet, default: 0

      t.timestamps
    end
  end
end
