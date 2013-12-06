json.array!(@jobshistories) do |jobshistory|
  json.extract! jobshistory, :start, :end, :company, :location, :job
  json.url jobshistory_url(jobshistory, format: :json)
end
