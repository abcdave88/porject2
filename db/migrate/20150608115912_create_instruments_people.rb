class CreateInstrumentsPeople < ActiveRecord::Migration
  def change
    create_table :instruments_people do |t|
      t.integer :instrument_id
      t.integer :person_id

      t.timestamps null: false
    end
  end
end
