class CreateEntryseatTags < ActiveRecord::Migration[6.1]
  def change
    create_table :entryseat_tags do |t|
      t.references :entryseat, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
