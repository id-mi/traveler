class AddCorrectForeignKeysToRelationships < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :relationships, :users, column: :followed_id
    add_foreign_key :relationships, :users, column: :follower_id
  end
end
