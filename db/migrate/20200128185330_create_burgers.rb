#rails g migration CreateBurgers
class CreateBurgers < ActiveRecord::Migration[6.0]
  def change
    create_table :burgers do |table|
      table.string :name
      table.decimal :price

      table.timestamps
    end
  end
end
#rails db:migrate
#then I created the burger.rb
