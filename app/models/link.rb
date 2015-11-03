require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-migrations'

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, "postgres://localhost/bookmark_manager")

class Link
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :url, String
end

DataMapper.finalize
DataMapper.auto_migrate!