json.extract! mydb, :id, :email, :title, :vid_link, :image, :created_at, :updated_at
json.url mydb_url(mydb, format: :json)
