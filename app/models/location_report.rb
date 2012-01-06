class LocationReport < ActiveRecord::Base
  #acts_as_gmappable :lat => 'latitude', :lng => 'longitude', :check_process => :prevent_geocoding,
  #                :address => "address", :normalized_address => "address",
  #                :msg => "Sorry, not even Google could figure out where that is"
    
  belongs_to :report
  belongs_to :user
  belongs_to :updated_by, :class_name => 'User', :foreign_key => 'updated_user_id'
  belongs_to :created_by, :class_name => 'User', :foreign_key => 'created_user_id'

  validates_presence_of :address

  def prevent_geocoding
    true
  end
  def gmaps4rails_address
    "#{self.address}, #{self.city}, #{self.country}"
  end
  def has_map?
    !(latitude.nil? || longitude.nil?)
  end
end
