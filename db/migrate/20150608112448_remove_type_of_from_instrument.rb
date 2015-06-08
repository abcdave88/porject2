class RemoveTypeOfFromInstrument < ActiveRecord::Migration
  def change
    remove_column :instruments, :type_of, :string
  end
end
