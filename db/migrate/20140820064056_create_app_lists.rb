class CreateAppLists < ActiveRecord::Migration
  def change
    create_table :app_lists do |t|
      t.string   :app_title
      t.string   :app_logo
      t.string   :app_url
      t.integer  :app_parent
      t.integer  :app_child
      t.string   :app_count
      t.string   :app_version
      t.string   :app_size
      t.integer  :app_credit
      t.integer  :app_type
      t.integer   :app_system

      t.timestamps
    end
  end
end
