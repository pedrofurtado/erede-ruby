require 'json'
require 'net/http'

require 'erede/errors/cielo_error'

require 'erede/environment'

require 'erede/models/base'
require 'erede/models/device'
require 'erede/models/brand'
require 'erede/models/iata'
require 'erede/models/authorization'
require 'erede/models/document'
require 'erede/models/three_d_secure'
require 'erede/models/capture'
require 'erede/models/consumer'
require 'erede/models/transaction'
require 'erede/models/submerchant'
require 'erede/models/item'
require 'erede/models/phone'
require 'erede/models/url'
require 'erede/models/refund'
require 'erede/models/store'
require 'erede/models/passenger'
require 'erede/models/flight'
require 'erede/models/address'
require 'erede/models/cart'

require 'erede/services/base'
require 'erede/services/create_transaction'
require 'erede/services/capture_transaction'
require 'erede/services/cancel_transaction'
require 'erede/services/get_transaction'

require 'erede/sdk'
