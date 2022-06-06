class CreateNames < ActiveRecord::Migration[7.0]
  def change
    create_table :names do |t|
      t.string :description
      t.date :date_start
      t.string :date_finish
      t.date :state

      t.timestamps
    end
  end
end
