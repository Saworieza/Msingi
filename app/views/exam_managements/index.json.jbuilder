json.array!(@exam_managements) do |exam_management|
  json.extract! exam_management, :id
  json.url exam_management_url(exam_management, format: :json)
end
