class AddAccountIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :account
  end
end
