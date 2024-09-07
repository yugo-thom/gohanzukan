class AddTitleToTweets < ActiveRecord::Migration[6.1]
  def change
    add_column :tweets, :address, :string
    add_column :tweets, :about, :text
    add_column :tweets, :image, :string
  end
end
