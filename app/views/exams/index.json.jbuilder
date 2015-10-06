json.array!(@exams) do |exam|
  json.extract! exam, :id, :name, :attachment, :start_date, :end_date, :passmark
  json.url exam_url(exam, format: :json)
end
