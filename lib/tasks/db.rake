namespace :db do

  desc 'Dump the database from the RAILS_ENV environment database.'
  task :dump => [:environment] do
    with_config do |host, database, username, path|
      system "pg_dump -h #{host} -U #{username} -d #{database} -F c -b -v -f #{path}"
    end
  end

  desc 'Restore the database to the RAILS_ENV environment database.'
  task :restore => [:environment] do
    unless (env == 'development' || env == 'test')
      STDOUT.puts "Are you sure you want to restore #{env} database? (y/n)"
      next unless STDIN.gets.strip == 'y'
    end

    with_config do |host, database, username, path|
      system "pg_restore -h #{host} --username #{username} --clean  -d #{database} -v #{path}"
    end
  end

  def with_config(&block)
    yield config['host'], config['database'], config['username'], dump_path
  end

  def env
    Rails.env
  end

  def config
    Rails.configuration.database_configuration[env]
  end

  def dump_path
    "db/#{env}.dump"
  end

end
