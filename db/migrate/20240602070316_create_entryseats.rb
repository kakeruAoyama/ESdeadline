class CreateEntryseats < ActiveRecord::Migration[6.1]
  def change
    create_table :entryseats do |t|
      t.date :date

      t.timestamps
    end
  end
end
