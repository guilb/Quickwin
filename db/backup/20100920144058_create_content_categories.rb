class CreateContentCategories < ActiveRecord::Migration
  def self.up
    create_table :content_categories do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :content_categories
  end
end
