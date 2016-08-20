json.extract! job_quote, :id, :job_id, :user_id, :price, :created_at, :updated_at
json.url job_quote_url(job_quote, format: :json)