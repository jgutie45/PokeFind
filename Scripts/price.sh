# base1
# csv order1: .id, "normal", .tcgplayer.prices.normal.low, .tcgplayer.prices.normal.mid, .tcgplayer.prices.normal.high
# csv order2: .id, "holofoil", .tcgplayer.prices.holofoil.low, .tcgplayer.prices.holofoil.mid, .tcgplayer.prices.holofoil.high
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base1%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, "normal", .tcgplayer.prices.normal.low, .tcgplayer.prices.normal.mid, .tcgplayer.prices.normal.high] | @csv' | tr -d '"\\' | awk -F"," 'BEGIN {OFS=","}; $3!=""' > price.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base1%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, "holofoil", .tcgplayer.prices.holofoil.low, .tcgplayer.prices.holofoil.mid, .tcgplayer.prices.holofoil.high] | @csv' | tr -d '"\\' | awk -F"," 'BEGIN {OFS=","}; $3!=""' >> price.csv

# base2
# csv order1: .id, "normal", .tcgplayer.prices.normal.low, .tcgplayer.prices.normal.mid, .tcgplayer.prices.normal.high
# csv order2: .id, "holofoil", .tcgplayer.prices.holofoil.low, .tcgplayer.prices.holofoil.mid, .tcgplayer.prices.holofoil.high
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base2%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, "normal", .tcgplayer.prices.normal.low, .tcgplayer.prices.normal.mid, .tcgplayer.prices.normal.high] | @csv' | tr -d '"\\' | awk -F"," 'BEGIN {OFS=","}; $3!=""' >> price.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base2%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, "holofoil", .tcgplayer.prices.holofoil.low, .tcgplayer.prices.holofoil.mid, .tcgplayer.prices.holofoil.high] | @csv' | tr -d '"\\' | awk -F"," 'BEGIN {OFS=","}; $3!=""' >> price.csv

# base3
# csv order1: .id, "normal", .tcgplayer.prices.normal.low, .tcgplayer.prices.normal.mid, .tcgplayer.prices.normal.high
# csv order2: .id, "holofoil", .tcgplayer.prices.holofoil.low, .tcgplayer.prices.holofoil.mid, .tcgplayer.prices.holofoil.high
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base3%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, "normal", .tcgplayer.prices.normal.low, .tcgplayer.prices.normal.mid, .tcgplayer.prices.normal.high] | @csv' | tr -d '"\\' | awk -F"," 'BEGIN {OFS=","}; $3!=""' >> price.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base3%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, "holofoil", .tcgplayer.prices.holofoil.low, .tcgplayer.prices.holofoil.mid, .tcgplayer.prices.holofoil.high] | @csv' | tr -d '"\\' | awk -F"," 'BEGIN {OFS=","}; $3!=""' >> price.csv

# base4
# csv order1: .id, "normal", .tcgplayer.prices.normal.low, .tcgplayer.prices.normal.mid, .tcgplayer.prices.normal.high
# csv order2: .id, "holofoil", .tcgplayer.prices.holofoil.low, .tcgplayer.prices.holofoil.mid, .tcgplayer.prices.holofoil.high
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base4%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, "normal", .tcgplayer.prices.normal.low, .tcgplayer.prices.normal.mid, .tcgplayer.prices.normal.high] | @csv' | tr -d '"\\' | awk -F"," 'BEGIN {OFS=","}; $3!=""' >> price.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base4%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, "holofoil", .tcgplayer.prices.holofoil.low, .tcgplayer.prices.holofoil.mid, .tcgplayer.prices.holofoil.high] | @csv' | tr -d '"\\' | awk -F"," 'BEGIN {OFS=","}; $3!=""' >> price.csv

# base5
# csv order1: .id, "normal", .tcgplayer.prices.normal.low, .tcgplayer.prices.normal.mid, .tcgplayer.prices.normal.high
# csv order2: .id, "holofoil", .tcgplayer.prices.holofoil.low, .tcgplayer.prices.holofoil.mid, .tcgplayer.prices.holofoil.high
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base5%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, "normal", .tcgplayer.prices.normal.low, .tcgplayer.prices.normal.mid, .tcgplayer.prices.normal.high] | @csv' | tr -d '"\\' | awk -F"," 'BEGIN {OFS=","}; $3!=""' >> price.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base5%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, "holofoil", .tcgplayer.prices.holofoil.low, .tcgplayer.prices.holofoil.mid, .tcgplayer.prices.holofoil.high] | @csv' | tr -d '"\\' | awk -F"," 'BEGIN {OFS=","}; $3!=""' >> price.csv

# basep
# csv order1: .id, "normal", .tcgplayer.prices.normal.low, .tcgplayer.prices.normal.mid, .tcgplayer.prices.normal.high
# csv order2: .id, "holofoil", .tcgplayer.prices.holofoil.low, .tcgplayer.prices.holofoil.mid, .tcgplayer.prices.holofoil.high
# csv order3: .id, "reverseHolofoil", .tcgplayer.prices.reverseHolofoil.low, .tcgplayer.prices.reverseHolofoil.mid, .tcgplayer.prices.reverseHolofoil.high
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:basep%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, "normal", .tcgplayer.prices.normal.low, .tcgplayer.prices.normal.mid, .tcgplayer.prices.normal.high] | @csv' | tr -d '"\\' | awk -F"," 'BEGIN {OFS=","}; $3!=""' >> price.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:basep%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, "holofoil", .tcgplayer.prices.holofoil.low, .tcgplayer.prices.holofoil.mid, .tcgplayer.prices.holofoil.high] | @csv' | tr -d '"\\' | awk -F"," 'BEGIN {OFS=","}; $3!=""' >> price.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:basep%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, "reverseHolofoil", .tcgplayer.prices.reverseHolofoil.low, .tcgplayer.prices.reverseHolofoil.mid, .tcgplayer.prices.reverseHolofoil.high] | @csv' | tr -d '"\\' | awk -F"," 'BEGIN {OFS=","}; $3!=""' >> price.csv
