class CreateNames < ActiveRecord::Migration[6.0]
  def change
    create_table :names do |t|
      t.text :description
      t.string :status
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
