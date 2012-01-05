class CreateGeneralReports < ActiveRecord::Migration
  def change
    create_table :general_reports do |t|
      t.integer :report_id
      t.string :name
      t.string :designation
      t.text :motivation
      t.integer :created_user_id
      t.integer :updated_user_id

      t.timestamps
    end
  end
end
