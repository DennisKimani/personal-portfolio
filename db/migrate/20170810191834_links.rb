class Links < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :github_link, :string
      t.column :launch, :string
      t.column :code_id, :integer

      t.timestamps
    end
  end
end
