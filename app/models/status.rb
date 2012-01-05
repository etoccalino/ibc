class Status < ActiveRecord::Base
  BAD = "Bad"
  REGULAR = "Regular"
  GOOD = "Good"
  EXCELENT = "Excelent"
  
  BAD_ID = 1
  REGULAR_ID = 2
  GOOD_ID = 3
  EXCELENT_ID = 4
  
  has_many :status_reports
  
end
