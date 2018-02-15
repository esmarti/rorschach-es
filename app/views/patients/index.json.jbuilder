json.array!(@patients) do |patient|
  json.extract! patient, :id, :given_name, :last_name, :phone, :age, :sex, :isPatient, :user_id
  json.url patient_url(patient, format: :json)
end
