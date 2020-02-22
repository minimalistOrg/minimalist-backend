class CreateFunctions < ActiveRecord::Migration[6.0]
  def change
    create_table :functions do |t|
      t.references :namespace, null: false, foreign_key: true
      t.string :name
      t.json :ast, default: {}
      t.integer :callee_ids, array: true, default: [], index: true
      t.integer :number_of_statements, default: 0
      t.json :arguments, default: {}

      t.timestamps
    end
  end
end
