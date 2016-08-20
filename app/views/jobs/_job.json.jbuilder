json.extract! job, :id, :name, :location, :svctype, :class, :job_date, :due_date, :user_id, :created_at, :updated_at
json.url job_url(job, format: :json)