# ERede Ruby

SDK Ruby de integração eRede

```bash
docker build -t erede_ruby .
docker run --rm -v $(pwd):/app/ -w /app/ -it erede_ruby irb -I lib -r erede
docker run --rm -v $(pwd):/app/ -w /app/ -it erede_ruby bundle exec rake spec
```

```ruby
store             = Erede::Models::Store.new
store.token       = ''
store.filiation   = ''
store.environment = Erede::Environment.sandbox | Erede::Environment.production

sdk = Erede::Sdk.new(store)

sdk.get_refunds(123)
sdk.get_by_reference(123)
sdk.get_by_id(233123)

capture_transaction        = Erede::Models::Transaction.new
capture_transaction.amount = '1.99'
capture_transaction.tid    = '123'
sdk.capture(capture_transaction)

cancel_transaction        = Erede::Models::Transaction.new
cancel_transaction.amount = '1.99'
cancel_transaction.tid    = '123'
sdk.cancel(cancel_transaction)

create_transaction        = Erede::Models::Transaction.new
create_transaction.amount = '1.99'
sdk.create(create_transaction)

authorize_transaction        = Erede::Models::Transaction.new
authorize_transaction.amount = '1.99'
sdk.authorize(authorize_transaction)
```
