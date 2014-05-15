class Version
  include Mongoid::Document
  field :database, type: Integer
  field :app, type: Integer
  field :backend, type: Integer
end
