json.extract! employee, :id, :name, :email, :age, :company, :created_at, :updated_at
json.url employee_url(employee, format: :json)
