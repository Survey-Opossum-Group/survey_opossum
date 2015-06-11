class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.string :value
      t.integer :survey_id
      t.boolean :required
      t.integer :number
      t.text :description

      t.timestamps null: false
    end
  end
end
