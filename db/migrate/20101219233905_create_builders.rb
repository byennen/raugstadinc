class CreateBuilders < ActiveRecord::Migration
  def self.up
    create_table :builders do |t|
      t.string :name
      t.text :bio
      t.string :email
      t.timestamps
    end
  end

  def self.down
    drop_table :builders
  end
end
