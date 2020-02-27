class AddExtensionToFunctions < ActiveRecord::Migration[6.0]
  def change
    add_column :functions, :extension, :string
  end
end
