class AddAliasesToFunctions < ActiveRecord::Migration[6.0]
  def change
    add_column :functions, :aliases, :string, array: true, default: []
    add_index :functions, :aliases, using: 'gin'
  end
end
