class AddPriceToTweets < ActiveRecord::Migration[6.1]
  def change
    add_column :tweets, :price, :integer
  end
end
