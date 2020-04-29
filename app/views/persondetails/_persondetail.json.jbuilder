json.extract! persondetail, :id, :personable_id, :personable_type, :nombre, :apellido, :edad, :cedula, :huella_digital, :created_at, :updated_at
json.url persondetail_url(persondetail, format: :json)
