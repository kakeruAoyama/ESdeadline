class AddIndustoryToEs < ActiveRecord::Migration[6.1]
  def change
    add_column :es, :industory, :string
  end
end
