class AddInstrumentTypeToInstrument < ActiveRecord::Migration
  def change
    add_column :instruments, :instrument_type, :string
  end
end
