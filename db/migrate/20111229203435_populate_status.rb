class PopulateStatus < ActiveRecord::Migration
  def up
    Status.create(:name => Status::BAD)
    Status.create(:name => Status::REGULAR)
    Status.create(:name => Status::GOOD)
    Status.create(:name => Status::EXCELENT)
  end

  def down
    execute "TRUNCATE TABLE #{Status.table_name}"
  end
end
