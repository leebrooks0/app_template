namespace :db do

  desc 'Fill database with sample data'
  task populate: :environment do
    purge_database
    # Create data here
  end
end


def purge_database
  puts 'about to drop and recreate database'
  system('rake db:drop')
  puts 'database dropped'
  system('rake db:create')
  system('rake db:migrate')
  system('rake db:seed')
  puts 'Database recreated...'
end

