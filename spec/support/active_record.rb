require 'active_record'
require 'logger'

dbconfig = {
  :adapter => 'postgresql',
  :database => 'authem_test',
  :min_messages => 'warning'
}

ActiveRecord::Migration.verbose = false

#(Re)create database
ActiveRecord::Base.establish_connection(dbconfig.merge('database' => 'postgres', 'schema_search_path' => 'public'))
ActiveRecord::Base.connection.drop_database dbconfig[:database] rescue nil
ActiveRecord::Base.connection.create_database(dbconfig[:database])
ActiveRecord::Base.establish_connection(dbconfig)

class TestMigration < ActiveRecord::Migration
  def self.up
    create_table :active_record_users, :force => true do |t|
      t.column :email, :string
      t.column :crypted_password, :string
      t.column :salt, :string
      t.column :remember_me_token, :string
      t.column :reset_password_token, :string
    end
  end

  def self.down
    drop_table :active_record_users
  end
end

RSpec.configure do |config|
  config.before(:suite) { TestMigration.up }
end

class ActiveRecordUser < ActiveRecord::Base
  include Authem::Model
end
