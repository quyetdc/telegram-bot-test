class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :content
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
