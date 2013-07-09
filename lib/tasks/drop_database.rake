# http://stackoverflow.com/questions/5108876/kill-a-postgresql-session-connection
# You need to use pg_stat_activity.procpid instead of pg_stat_activity.pid for Postgres 9.1 and below. See stackoverflow.com/a/5408501/444774 – talyric May 9 at 23:44
require 'active_record/connection_adapters/postgresql_adapter'
module ActiveRecord
  module ConnectionAdapters
    class PostgreSQLAdapter < AbstractAdapter
      def drop_database(name)
        raise "Cannot use this task to drop the production database" if Rails.env.production?
        execute <<-SQL
          UPDATE pg_catalog.pg_database
          SET datallowconn=false WHERE datname='#{name}'
        SQL

        execute <<-SQL
          SELECT pg_terminate_backend(pg_stat_activity.procpid)
          FROM pg_stat_activity
          WHERE pg_stat_activity.datname = '#{name}';
        SQL
        execute "DROP DATABASE IF EXISTS #{quote_table_name(name)}"
      end
    end
  end
end

