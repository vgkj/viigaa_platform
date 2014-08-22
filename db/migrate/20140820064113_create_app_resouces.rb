class CreateAppResouces < ActiveRecord::Migration
  def change
    create_table :app_resouces do |t|
      t.integer  :app_list_id
      t.string   :app_pic

      t.timestamps
    end
  end
end
