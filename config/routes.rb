Rails.application.routes.draw do
  get '/students', to: 'students#index'
  get '/students/grades', to: 'students#grades'
  get '/students/highest-grade', to: 'students#highest_grade'
  get '/students/:id', to: 'students#show'
  get '/students?name=:first_name', to: 'students#name'
  get '/students?name=:name', to: 'students#name'
end


# context 'with query params' do
#   it 'returns students whose first or last name matches the query' do
#     get '/students?name=kirby'

#     expect(response.body).to include_json([
#       { first_name: 'Vanessa', last_name: 'Kirby', grade: 85 }
#     ])
#   end
# end
