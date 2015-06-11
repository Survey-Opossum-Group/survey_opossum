class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :value
      t.integer :question_id

      t.timestamps null: false
    end
  end
end
