json.array!(@versions) do |version|
  json.extract! version, :id, :database, :app, :backend
  json.url version_url(version, format: :json)
end
