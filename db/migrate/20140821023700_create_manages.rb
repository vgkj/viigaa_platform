class CreateManages < ActiveRecord::Migration
  def change
    create_table :manages,id: false do |t|
      t.string :mid
      t.string :username
      t.string :password_digest
      t.string :image
      t.datetime :logintime
      t.string :status

      t.timestamps
    end

    execute %{ALTER TABLE manages ADD PRIMARY KEY(mid);}
  end
end
