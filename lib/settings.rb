# This file is used to setup the constants in the project
# Required Constants:
#   PARLIAMENTARIANS_URL
#   ENV
#   MONGO_DB_SETTINGS

# Url where open data is stored to public
OPEN_DATA_URLS = {
    'brazil' => {
        'parliamentarians' => 'http://legis.senado.leg.br/dadosabertos/senador/lista/atual',
        'councilman' => {
            'sp' => {
                'debits' => 'https://app-sisgvconsulta-prd.azurewebsites.net/ws/ws2.asmx/ObterDebitoVereadorJSON?'
            }
        }
    }
}
# PARLIAMENTARIANS_URL = 'http://legis.senado.leg.br/dadosabertos/senador/lista/atual'
# COUNCILMAN_URL = {
#     'sp' => {
#         'debits' => 'https://app-sisgvconsulta-prd.azurewebsites.net/ws/ws2.asmx/ObterDebitoVereadorJSON?'
#     }
# }

# Enviroment (development, production or tests)
$env = 'production'

# Mongo settings to extract information (development, production or tests)
MONGO_DB_SETTINGS = {
    'production' => {
        'name' => "opendata",
        'host' => "localhost",
        'port' => "27017",
    },

    'development' => {
        'name' => "opendata_development",
        'host' => "localhost",
        'port' => "27017",
    },

    'test' => {
        'name' => "opendata_test",
        'host' => "localhost",
        'port' => "27017",
    },
}

MYSQL_DB_SETTINGS = {
    'production' => {
        'name' => "opendata",
        'host' => "localhost",
        'port' => "27017",
    },

    'development' => {
        'name' => "opendata_development",
        'host' => "localhost",
        'port' => "27017",
    },

    'test' => {
        'name' => "opendata_test",
        'host' => "localhost",
        'port' => "27017",
    },
}