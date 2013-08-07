class AddNameToDanceClasses < ActiveRecord::Migration
  def change
    add_column :dance_classes, :name, :string
  end
end
