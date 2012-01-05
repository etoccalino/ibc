class PopulateReportType < ActiveRecord::Migration
  def up
    ReportType.create(:name => ReportType::ARCHIVES, :description => "Historical Archives, Collections, etc")
    ReportType.create(:name => ReportType::ARCHITECTURE, :description => "Historical Archives, Collections, etc")
    ReportType.create(:name => ReportType::MOBILES, :description => "Historical Archives, Collections, etc")
    ReportType.create(:name => ReportType::CELEBRATIONS, :description => "Historical Archives, Collections, etc")
    
  end

  def downpe
    execute "TRUNCATE TABLE #{ReportType.table_name}"
  end
end
