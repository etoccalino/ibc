class CreateStatusReports < ActiveRecord::Migration
  def change
    create_table :status_reports do |t|
      t.integer :report_id
      t.integer :status_id
      t.integer :updated_user_id
      t.integer :created_user_id

      t.timestamps
    end
  end
end
