class CreateFavoriteClasses < ActiveRecord::Migration
  def change
    create_table :favorite_classes do |t|
      t.integer :dance_class_id
      t.integer :user_id

      t.timestamps
    end
  end
end
