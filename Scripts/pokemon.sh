# csv order: .id, .name, .level, .hp, .types[0], .rarity, .set.name, .images.large, .images.small, .evolvesTo[0]
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base1%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, .name, .level, .hp, .types[0], .rarity, .set.name, .images.large, .images.small, .evolvesTo[0]] | @csv' | tr -d '"\\' > base.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base2%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, .name, .level, .hp, .types[0], .rarity, .set.name, .images.large, .images.small, .evolvesTo[0]] | @csv' | tr -d '"\\' >> base.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base3%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, .name, .level, .hp, .types[0], .rarity, .set.name, .images.large, .images.small, .evolvesTo[0]] | @csv' | tr -d '"\\' >> base.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base4%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, .name, .level, .hp, .types[0], .rarity, .set.name, .images.large, .images.small, .evolvesTo[0]] | @csv' | tr -d '"\\' >> base.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:base5%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, .name, .level, .hp, .types[0], .rarity, .set.name, .images.large, .images.small, .evolvesTo[0]] | @csv' | tr -d '"\\' >> base.csv
curl -X GET 'https://api.pokemontcg.io/v2/cards?q=id:basep%20supertype:pokemon' -H 'apikey: afa308c8-8082-4e19-871f-02c33fc09986' | jq '.data | .[] | [.id, .name, .level, .hp, .types[0], .rarity, .set.name, .images.large, .images.small, .evolvesTo[0]] | @csv' | tr -d '"\\' >> base.csv

# Replace empty .evolvesTo[0] elements to \N
cat base.csv | awk -F"," 'BEGIN {OFS=","}; $10 == "" { $10 = "\\N" }; $3 == "" { $3 = "\\N" };1' > pokemon.csv 
# Final file: pokemon.csv

# These pages helped with using awk:
# https://unix.stackexchange.com/questions/437164/is-it-possible-to-put-double-quotes-in-just-a-few-columns-using-sed
# https://unix.stackexchange.com/questions/543680/awk-command-edit-blank-cell-in-csv-to-text-value