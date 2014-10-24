class CreateReferrariReferralCodes < ActiveRecord::Migration
  def change
    fail "Referrari requires a users table" unless ActiveRecord::Base.connection.table_exists? 'users'

    remove_column :referrari_referrals, :code

    create_table :referrari_referral_codes do |t|
      t.references :user
      t.string :code
      t.timestamps
    end

    add_column :referrari_referrals, :referrari_referral_code_id, :integer

    add_index :referrari_referral_codes, :code, :unique => true
  end
end
