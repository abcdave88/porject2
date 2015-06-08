class CreateBandsPeople < ActiveRecord::Migration
  def change
    create_table :bands_people do |t|
      t.integer :band_id
      t.integer :person_id

      t.timestamps null: false
    end
  end
end
