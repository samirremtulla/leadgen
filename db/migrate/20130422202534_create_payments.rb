class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :question
      t.references :user
      t.boolean :payment

      t.timestamps
    end
    add_index :payments, :question_id
    add_index :payments, :user_id
  end
end
