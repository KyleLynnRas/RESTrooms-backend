class CreateRestrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :restrooms do |t|
      t.float :latitude
      t.float :longitude
      t.string :photo
      t.integer :cleanlieness
      t.boolean :free
      t.boolean :changetable
      t.boolean :accessible
      t.boolean :public
      t.string :street

      t.timestamps
    end
  end
end
