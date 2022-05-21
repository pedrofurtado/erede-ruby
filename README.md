# ERede SDK Ruby

SDK de integração eRede

```bash
docker build -t erede_ruby .
docker run --rm -v $(pwd):/app/ -it erede_ruby irb -I lib -r erede
> EREDE::ERede.new(EREDE::Store.new('12312321', '12321334', EREDE::Environment.sandbox)).get_refunds(123)
> EREDE::ERede.new(EREDE::Store.new('12312321', '12321334', EREDE::Environment.sandbox)).get_by_reference(123)
> EREDE::ERede.new(EREDE::Store.new('12312321', '12321334', EREDE::Environment.sandbox)).get_by_id(233123)
> EREDE::ERede.new(EREDE::Store.new('qwe', 'r34', EREDE::Environment.sandbox)).capture(EREDE::Transaction.new(12.88).tap { |t| t.tid = 4866 })
> EREDE::ERede.new(EREDE::Store.new('qwe', 'r34', EREDE::Environment.sandbox)).cancel(EREDE::Transaction.new(12.88).tap { |t| t.tid = 5229 })
> EREDE::ERede.new(EREDE::Store.new('qwe', 'r34', EREDE::Environment.sandbox)).create(EREDE::Transaction.new(12.88))
> EREDE::ERede.new(EREDE::Store.new('qwe', 'r34', EREDE::Environment.sandbox)).authorize(EREDE::Transaction.new(12.88))
```
