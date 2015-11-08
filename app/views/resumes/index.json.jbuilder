json.array!(@resumes) do |resume|
  json.extract! resume, :id, :full_name, :skill, :exp, :edu
  json.url resume_url(resume, format: :json)
end
