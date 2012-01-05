class HistoricalReport < ActiveRecord::Base
  belongs_to :report
  belongs_to :user
  belongs_to :updated_by, :class_name => 'User', :foreign_key => 'updated_user_id'
  belongs_to :created_by, :class_name => 'User', :foreign_key => 'created_user_id'
end
