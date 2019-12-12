class AddVideoToTweet < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :video, :string
  end
end
