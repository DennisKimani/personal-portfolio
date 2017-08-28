class CreateReferences < ActiveRecord::Migration[5.1]
  def change
    create_table :references do |t|
      t.string :name
      t.string :email
      t.string :remark

      t.timestamps
    end
  end
end
