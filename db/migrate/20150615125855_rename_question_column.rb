class RenameQuestionColumn < ActiveRecord::Migration
  def change
    change_table :questions do |t|
      t.rename :name, :question_type
    end
  end
end
