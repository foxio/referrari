class AddCodeToReferrals < ActiveRecord::Migration
  def change
    add_column :referrari_referrals, :code, :string

    add_index :referrari_referrals, :code, :unique => true
  end
end
