class CreateFunctionsTags < ActiveRecord::Migration[6.0]
  def change
    create_table :functions_tags do |t|
      t.references :function, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
    end
  end
end
