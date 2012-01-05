class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  has_many :reports
  has_many :general_reports
  has_many :historical_reports
  has_many :location_reports
  has_many :owner_reports
  has_many :status_reports
  has_many :supplementary_data_reports

  validates :password, :length => { :minimum => 3 }, :if => :password
  validates :password, :confirmation => true, :if => :password
end
