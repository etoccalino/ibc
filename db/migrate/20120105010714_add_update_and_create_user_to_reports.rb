class AddUpdateAndCreateUserToReports < ActiveRecord::Migration
  def change
    add_column :reports, :updated_user_id, :integer
    add_column :reports, :created_user_id, :integer
  end
end
