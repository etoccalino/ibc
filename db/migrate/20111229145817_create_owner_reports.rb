class CreateOwnerReports < ActiveRecord::Migration
  def change
    create_table :owner_reports do |t|
      t.integer :report_id
      t.string :owner
      t.string :address
      t.string :administrative_subordination
      t.string :responsible
      t.boolean :access_restriction
      t.string :service_hours
      t.integer :updated_user_id
      t.integer :created_user_id

      t.timestamps
    end
  end
end
