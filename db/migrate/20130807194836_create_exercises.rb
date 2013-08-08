class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :user_id
      t.string :picture_url
      t.text :description

      t.timestamps
    end
  end
end
