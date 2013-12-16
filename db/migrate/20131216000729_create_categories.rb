class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.integer :position

      t.timestamps
    end

    add_reference :projects, :category, index: true
  end
end
