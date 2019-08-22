class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.boolean :active, null: false, default: true
      t.references :company, foreign_key: true
      t.json :salary_range
      t.text :content, limit: 800
      t.text :condition, limit: 800
      t.text :welfare, limit: 800

      t.timestamps
    end

  end
end
