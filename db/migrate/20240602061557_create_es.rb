class CreateEs < ActiveRecord::Migration[6.1]
  def change
    create_table :es do |t|
      t.date :date

      t.timestamps
    end
  end
end
