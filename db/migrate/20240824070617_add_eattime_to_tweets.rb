class AddEattimeToTweets < ActiveRecord::Migration[6.1]
  def change
    add_column :tweets, :eattime, :string
  end
end
