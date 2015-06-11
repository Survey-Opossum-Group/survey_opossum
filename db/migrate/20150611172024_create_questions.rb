class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.string :value
      t.integer :survey_id

      t.timestamps null: false
    end
  end
end
