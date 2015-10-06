json.array!(@book_statuses) do |book_status|
  json.extract! book_status, :id, :status, :comment
  json.url book_status_url(book_status, format: :json)
end
