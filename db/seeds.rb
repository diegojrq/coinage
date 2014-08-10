## Seeds

# Users
User.create! :email => 'diegojrq@gmail.com', :password => '12345678', :password_confirmation => '12345678'
User.create! :email => 'anap.aguiarc@gmail.com', :password => '12345678', :password_confirmation => '12345678'

# Accounts
Account.create! :name => 'Banco do Brasil', :user_id => 1, :start_value => 500
Account.create! :name => 'Santander', :user_id => 1, :start_value => 100
Account.create! :name => 'HSBC', :user_id => 1, :start_value => 0
Account.create! :name => 'Bradesco', :user_id => 2, :start_value => 0
Account.create! :name => 'Caixa Econômica', :user_id => 2, :start_value => 250

# Categories

# Transactions