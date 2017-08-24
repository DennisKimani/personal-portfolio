class Comments < ActiveRecord::Migration[5.1]
  def change
    create_table Comments do |t|
      t.column :name, :string
      t.column :comment, :string

      t.timestamps
    end
  end
end
