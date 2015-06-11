json.array!(@authors) do |author|
  json.extract! author, :id, :name, :email, :password_digest
  json.url author_url(author, format: :json)
end
