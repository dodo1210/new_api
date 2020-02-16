class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
