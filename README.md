# ERede Ruby SDK

[![CI](https://github.com/pedrofurtado/erede-ruby-sdk/actions/workflows/ci.yml/badge.svg)](https://github.com/pedrofurtado/erede-ruby-sdk/actions/workflows/ci.yml)
[![Gem Version](https://badge.fury.io/rb/erede-ruby-sdk.svg)](https://badge.fury.io/rb/erede-ruby-sdk)
[![Gem](https://img.shields.io/gem/dt/erede-ruby-sdk.svg)]()
[![license](https://img.shields.io/github/license/pedrofurtado/erede-ruby-sdk.svg)]()
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/pedrofurtado/erede-ruby-sdk)

SDK Ruby de integração eRede.

![](./erede-logo.png)

## Guia de uso

```ruby
require 'logger'
require 'erede'

# Configuração do ambiente
store             = Erede::Models::Store.new
store.token       = '6069a026cf454706990a801ab5fe8e36'
store.filiation   = '73854967'
store.logger      = Logger.new(STDOUT)
store.environment = Erede::Environment.sandbox | Erede::Environment.production

# Inicialização da SDK
sdk = Erede::Sdk.new(store)

# Realizar uma transação
# POST /v1/transactions
# https://developer.userede.com.br/e-rede#swagger_operations-Transa%C3%A7%C3%A3o-realizarTransacao
create_transaction                        = Erede::Models::Transaction.new
create_transaction.capture                = false
create_transaction.kind                   = 'credit'
create_transaction.reference              = "#{(rand * 1000000).round}"
create_transaction.amount                 = 2099
create_transaction.installments           = nil
create_transaction.cardholderName         = 'John Snow'
create_transaction.cardNumber             = '5448280000000007'
create_transaction.expirationMonth        = 1
create_transaction.expirationYear         = 2028
create_transaction.securityCode           = '123'
create_transaction.softDescriptor         = 'something'
create_transaction.subscription           = false
create_transaction.origin                 = 1
create_transaction.distributorAffiliation = nil
create_transaction.brandTid               = nil
create_transaction.storageCard            = 0
sdk.create(create_transaction)

# Confirmar autorização da transação (captura)
# PUT /v1/transactions/{tid}
# https://developer.userede.com.br/e-rede#swagger_operations-Transa%C3%A7%C3%A3o-confirmarAutorizacaoDaTransacaoCaptura
capture_transaction        = Erede::Models::Transaction.new
capture_transaction.tid    = 123
capture_transaction.amount = 2099
sdk.capture(capture_transaction)

# Cancelar transação
# POST /v1/transactions/{tid}/refunds
# https://developer.userede.com.br/e-rede#swagger_operations-Cancelamento-cancelarTransacao
callback_url      = Erede::Models::Url.new
callback_url.kind = 'callback'
callback_url.url  = 'https://cliente.callback.com.br'
cancel_transaction        = Erede::Models::Transaction.new
cancel_transaction.tid    = 123
cancel_transaction.amount = 2000
cancel_transaction.urls   = [callback_url]
sdk.cancel(cancel_transaction)

# Consultar transação por tid
# GET /v1/transactions/{tid}
# https://developer.userede.com.br/e-rede#swagger_operations-Transa%C3%A7%C3%A3o-consultarTransacaoPorTid
sdk.get_by_tid(233123)

# Consultar cancelamentos por tid
# GET /v1/transactions/{tid}/refunds
# https://developer.userede.com.br/e-rede#swagger_operations-Cancelamento-consultarCancelamentoPorTid
sdk.get_refunds(123)

# Consultar cancelamento por refundId
# GET /v1/transactions/{tid}/refunds/{refundId}
# https://developer.userede.com.br/e-rede#swagger_operations-Cancelamento-consultarCancelamentoPorRefundId
sdk.get_refund(123, 567)

# Consultar transação por reference
# GET /v1/transactions?reference={reference}
# https://developer.userede.com.br/e-rede#swagger_operations-Transa%C3%A7%C3%A3o-consultarTransacaoPorReference
sdk.get_by_reference(123)
```

## Testes

```bash
# Entrar na pasta-raiz do repositório
cd erede-ruby

# Construir a imagem Docker
docker build -t erede_ruby .

# Executar os testes
docker run --rm -v $(pwd):/app/ -w /app/ -it erede_ruby bundle exec rake spec

# Executar um console para testes manuais na gem
docker run --rm -v $(pwd):/app/ -w /app/ -it erede_ruby irb -I lib -r erede
```

## Links úteis

- https://developer.userede.com.br/dev-portal-swaggers/erede/swagger.json
- https://developer.userede.com.br/files/erede/integration_manual.pdf
- https://developer.userede.com.br/e-rede
- https://www.userede.com.br/novo/documentos/certificado-digital-rede/certificado-digital-atualizar
- https://www.userede.com.br/novo/documentos/certificado-digital-rede
- https://www.userede.com.br/content/dam/userede/website/documents/certificado-digital/Ecommerce_B64.zip
- https://github.com/DevelopersRede
