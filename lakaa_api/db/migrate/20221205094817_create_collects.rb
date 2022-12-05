class CreateCollects < ActiveRecord::Migration[7.0]
  def change
    create_table :collects do |t|
      t.string :asso
      t.date :date
      t.float :weight
      t.integer :nb_ppl

      t.timestamps
    end
  end
end
