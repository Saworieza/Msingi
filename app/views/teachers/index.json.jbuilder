json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :first_name, :last_name, :surname, :gender, :dob, :status, :employer, :employment_date, :nationality, :employer_id, :education
  json.url teacher_url(teacher, format: :json)
end
