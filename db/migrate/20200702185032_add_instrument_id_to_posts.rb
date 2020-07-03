class AddInstrumentIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :instrument_id, :string, array: true, default: []
  end
end
