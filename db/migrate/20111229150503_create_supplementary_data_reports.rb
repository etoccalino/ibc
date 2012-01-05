class CreateSupplementaryDataReports < ActiveRecord::Migration
  def change
    create_table :supplementary_data_reports do |t|
      t.integer :report_id
      t.text :information
      t.integer :updated_user_id
      t.integer :created_user_id

      t.timestamps
    end
  end
end
