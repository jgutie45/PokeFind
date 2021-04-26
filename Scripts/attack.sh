# csv order: .id, .attacks[0].name, .attacks[0].cost[0], .attacks[0].convertedEnergyCost, .attacks[0].damage
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base1%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, .attacks[0].name, .attacks[0].cost[0], .attacks[0].convertedEnergyCost, .attacks[0].damage] | @csv' | tr -d '"\\' > a.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base1%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, .attacks[1].name, .attacks[1].cost[1], .attacks[1].convertedEnergyCost, .attacks[1].damage] | @csv' | tr -d '"\\' >> a.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base2%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, .attacks[0].name, .attacks[0].cost[0], .attacks[0].convertedEnergyCost, .attacks[0].damage] | @csv' | tr -d '"\\' >> a.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base2%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, .attacks[1].name, .attacks[1].cost[1], .attacks[1].convertedEnergyCost, .attacks[1].damage] | @csv' | tr -d '"\\' >> a.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base3%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, .attacks[0].name, .attacks[0].cost[0], .attacks[0].convertedEnergyCost, .attacks[0].damage] | @csv' | tr -d '"\\' >> a.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base3%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, .attacks[1].name, .attacks[1].cost[1], .attacks[1].convertedEnergyCost, .attacks[1].damage] | @csv' | tr -d '"\\' >> a.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base4%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, .attacks[0].name, .attacks[0].cost[0], .attacks[0].convertedEnergyCost, .attacks[0].damage] | @csv' | tr -d '"\\' >> a.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base4%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, .attacks[1].name, .attacks[1].cost[1], .attacks[1].convertedEnergyCost, .attacks[1].damage] | @csv' | tr -d '"\\' >> a.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base5%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, .attacks[0].name, .attacks[0].cost[0], .attacks[0].convertedEnergyCost, .attacks[0].damage] | @csv' | tr -d '"\\' >> a.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base5%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, .attacks[1].name, .attacks[1].cost[1], .attacks[1].convertedEnergyCost, .attacks[1].damage] | @csv' | tr -d '"\\' >> a.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:basep%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, .attacks[0].name, .attacks[0].cost[0], .attacks[0].convertedEnergyCost, .attacks[0].damage] | @csv' | tr -d '"\\' >> a.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:basep%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, .attacks[1].name, .attacks[1].cost[1], .attacks[1].convertedEnergyCost, .attacks[1].damage] | @csv' | tr -d '"\\' >> a.csv

# Remove empty lines.
cat a.csv | awk -F"," 'BEGIN {OFS=","}; $4!=""' > a2.csv

# Replace empty elements to \N
cat a2.csv | awk -F"," 'BEGIN {OFS=","}; $5 == "" { $5 = "\\N" };1' > attack.csv 
# Final file: attack.csv