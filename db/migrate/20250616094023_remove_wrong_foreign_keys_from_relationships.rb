class RemoveWrongForeignKeysFromRelationships < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :relationships, column: :followed_id rescue nil
    remove_foreign_key :relationships, column: :follower_id rescue nil
  end
end
