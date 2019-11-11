json.extract! publication, :id, :title, :link, :catalogs_pub_type_id, :created_at, :updated_at
json.url publication_url(publication, format: :json)
