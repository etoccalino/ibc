class TechnicalCardReport < ActiveRecord::Base
  belongs_to :report
  validates :survey, :elaboration, :presence => true
  #validates :survey_user1, :survey_user2, 
  #          :survey_user1_crea, :survey_user2_crea, 
  #          :elaboration_user1, :elaboration_user2, 
  #          :elaboration_user1_crea, :elaboration_user2_crea, 
  #          :presence => true, :on => :update
end
