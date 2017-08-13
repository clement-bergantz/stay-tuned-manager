class CreateSources < ActiveRecord::Migration[5.0]
  def change
    create_table :sources do |t|
      t.string :name
      t.string :url
      t.integer :review_id
      t.integer :type_id
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
