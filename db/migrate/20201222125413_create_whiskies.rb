class CreateWhiskies < ActiveRecord::Migration[6.0]
  def change
    create_table :whiskies do |t|
      t.string :title
      t.text :body
      t.integer :age
      t.string :ABV
      t.string :integer
      t.string :region
      t.string :string

      t.timestamps
    end
  end
end
