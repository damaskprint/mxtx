class AddAccountIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :account,
    add_index :posts, :account
  end
end
