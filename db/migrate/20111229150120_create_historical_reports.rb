class CreateHistoricalReports < ActiveRecord::Migration
  def change
    create_table :historical_reports do |t|
      t.integer :report_id
      t.text :history
      t.text :source
      t.integer :updated_user_id
      t.integer :created_user_id

      t.timestamps
    end
  end
end
