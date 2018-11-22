class CreateShits < ActiveRecord::Migration[5.1]
  def change
    create_table :shits do |t|
      t.string :word
      t.references :udon

      t.timestamps
    end
  end
end
