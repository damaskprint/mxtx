class AddFlagToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :flag, :boolean, default: false
  end
end
