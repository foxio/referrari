class CreateReferrariReferrals < ActiveRecord::Migration
  def change
    fail "Referrari requires a users table" unless ActiveRecord::Base.connection.table_exists? 'users'

    create_table :referrari_referrals do |t|
      t.integer :referrer_id

      t.integer :resource_id

      t.string  :http_referer

      t.timestamps
    end
  end
end
