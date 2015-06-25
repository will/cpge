require "pg"

DB_URL = ENV["DATABASE_URL"]? || "postgres:///"
DB = PG.connect(DB_URL)

module Cpge
  def self.go
    pp DB.exec("select now()").rows.first
  end
end

Cpge.go
