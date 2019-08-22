class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string     :name
      t.boolean    :active,       null: false, default: true
      t.references :admin,        foreign_key: true
      t.integer    :jobs_count,   default: 0
      t.json       :media_links
      t.text       :interduction, limit: 800
      t.text       :philosophy,   limit: 800   # 理念
      t.text       :welfare,      limit: 800   # 福利

      t.timestamps
    end

  end
end
