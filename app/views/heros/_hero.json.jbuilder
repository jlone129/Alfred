json.extract! hero, :id, :name, :health, :attack, :special, :spc_atk, :status, :created_at, :updated_at
json.url hero_url(hero, format: :json)
