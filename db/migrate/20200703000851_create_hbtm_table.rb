class CreateHbtmTable < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments_posts, id: false do |t|
      t.belongs_to :instrument, foreign_key: true, index: false, null: false
      t.belongs_to :post, foreign_key: true, index: false, null: false
    end
    add_index :instruments_posts, [:instrument_id, :post_id], unique: true
  end
end
