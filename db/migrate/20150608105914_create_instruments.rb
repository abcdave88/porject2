class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.string :type_of

      t.timestamps null: false
    end
  end
end
