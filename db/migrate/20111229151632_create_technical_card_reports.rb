class CreateTechnicalCardReports < ActiveRecord::Migration
  def change
    create_table :technical_card_reports do |t|
      t.integer :report_id
      t.date :survey
      t.date :elaboration
      t.string :survey_user1
      t.string :survey_user1_crea
      t.string :survey_user2
      t.string :survey_user2_crea
      t.string :elaboration_user1
      t.string :elaboration_user1_crea
      t.string :elaboration_user2
      t.string :elaboration_user2_crea

      t.timestamps
    end
  end
end
