class RemoveTitleFromTweets < ActiveRecord::Migration[6.1]
  def change
    remove_column :tweets, :adre, :string
  end
end
