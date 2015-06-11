class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.integer :author_id
      t.boolean :publish
      t.text :description

      t.timestamps null: false
    end
  end
end
