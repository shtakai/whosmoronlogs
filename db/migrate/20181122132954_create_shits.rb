class CreateShits < ActiveRecord::Migration[5.1]
  def change
    create_table :shits do |t|
      t.string :word

      t.timestamps
    end
  end
end
