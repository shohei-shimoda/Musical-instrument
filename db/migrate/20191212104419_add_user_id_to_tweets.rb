class AddUserIdToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :instrument_ids, :integer
  end
end
