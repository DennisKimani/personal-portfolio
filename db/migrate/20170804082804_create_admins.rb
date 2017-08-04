class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.column :title, :string
      t.column :description, :string
    end
  end
end
