class ReportType < ActiveRecord::Base
  ARCHIVES= "Archives"
  ARCHITECTURE = "Architecture"
  MOBILES = "Moviles"
  INMATERIAL = "Inmaterial"
  CELEBRATIONS = "Celebrations"
  EXPRESSIONS = "Expressions"
  
  ARCHIVES_ID = 1
  ARCHITECTURE_ID = 2
  MOBILES_ID = 3
  INMATERIAL_ID = 4
  CELEBRATIONS_ID = 5
  EXPRESSIONS_ID = 6
  
  INMATERIALS = [ CELEBRATIONS_ID, EXPRESSIONS_ID]
  
  has_many :reports
  
  def build_information_for(report)
    report.build_dependencies
    case self.name
    when ReportType::ARCHIVES
      #report.build_archive_report
    when ReportType::MOBILES
      #report.build_mobile_report
    when ReportType::INMATERIAL
      #report.build_inmaterial_report
    when ReportType::ARCHITECTURE
      #report.build_architecture_report
    end
  end
end
