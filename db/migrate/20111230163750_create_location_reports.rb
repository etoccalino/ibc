class CreateLocationReports < ActiveRecord::Migration
  def change
    create_table :location_reports do |t|
      t.integer :report_id
      t.integer :updated_user_id
      t.integer :created_user_id
      t.string :address
      t.string :street
      t.string :district
      t.string :state
      t.string :city
      t.string :country
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
