class CreateIncidents < ActiveRecord::Migration[5.1]
  def change
    create_table :incidents do |t|
      t.string :category
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :state
      t.string :zip
      t.date :occurred_on
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
