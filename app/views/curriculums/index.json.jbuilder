json.array!(@curriculums) do |curriculum|
  json.extract! curriculum, :description, :contact, :age, :education, :misc
  json.url curriculum_url(curriculum, format: :json)
end
