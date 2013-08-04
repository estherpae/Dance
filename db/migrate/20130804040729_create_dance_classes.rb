class CreateDanceClasses < ActiveRecord::Migration
  def change
    create_table :dance_classes do |t|
      t.integer :instructor_id
      t.integer :studio_id
      t.date :when
      t.string :time
      t.integer :cost

      t.timestamps
    end
  end
end
