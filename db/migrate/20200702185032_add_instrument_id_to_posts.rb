class AddInstrumentIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :instrument_id, :integer
  end
end
