name "mongodb-server"

default_attributes(
    "mongodb" => {"version" => "1.8.1"}
)

run_list(
    "recipe[mongodb::install]",
    "recipe[mongodb::configure]",
    "recipe[mongodb::configure_backups]"

)