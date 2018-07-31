class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :alias
      t.string :string
      t.string :nombre
      t.string :string
      t.string :curso
      t.string :integer
      t.string :area
      t.string :string

      t.timestamps
    end
  end
end
