configure :development do
	ActiveRecord::Base.establish_connection(
		:adapter  => 'sqlite3',
		:database => 'dev.db'
	)
end

configure :production do
	ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
end