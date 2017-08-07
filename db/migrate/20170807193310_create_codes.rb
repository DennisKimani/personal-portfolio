class CreateCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :codes do |t|
      t.column :skill, :string
      t.column :link, :string
    end
  end
end
