class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :description
      t.text :phone
      t.text :email
      t.text :name
      t.integer :response

      t.timestamps
    end
  end
end
