class AddIpAdressToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :ip_address, :string
  end
end
