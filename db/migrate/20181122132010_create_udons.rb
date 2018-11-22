class CreateUdons < ActiveRecord::Migration[5.1]
  def change
    create_table :udons do |t|
      t.string :name
      t.integer :kill_count

      t.timestamps
    end
  end
end
