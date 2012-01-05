class Report < ActiveRecord::Base
  belongs_to :report_type
  belongs_to :user
  belongs_to :updated_by, :class_name => 'User', :foreign_key => 'updated_user_id'
  belongs_to :created_by, :class_name => 'User', :foreign_key => 'created_user_id'
  
  has_one :general_report
  has_one :owner_report
  has_one :historical_report
  has_one :status_report
  has_one :supplementary_data_report
  has_one :technical_card_report
  has_one :location_report
  
  accepts_nested_attributes_for :general_report
  accepts_nested_attributes_for :owner_report  
  accepts_nested_attributes_for :historical_report
  accepts_nested_attributes_for :status_report
  accepts_nested_attributes_for :supplementary_data_report
  accepts_nested_attributes_for :technical_card_report
  accepts_nested_attributes_for :location_report
  
  validates :report_type_id, :presence => true
  
  def self.search(q)
    GeneralReport.where('name LIKE ?', "%#{q}%").map{|gr| gr.report}
  end
  
  def build_dependencies
    build_general_report
    build_owner_report
    build_historical_report
    build_status_report
    build_supplementary_data_report
    build_technical_card_report
    build_location_report
  end
    
end
