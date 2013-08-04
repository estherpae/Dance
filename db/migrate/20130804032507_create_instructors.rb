class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :style
      t.text :biography

      t.timestamps
    end
  end
end
