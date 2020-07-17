class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.text :title
      t.text :explanation  
      t.timestamps
    end
  end
end
