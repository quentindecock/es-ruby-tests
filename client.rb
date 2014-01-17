require 'elasticsearch'

es = Elasticsearch::Client.new(log: true, host: 'localhost', port: '9200')

# creating an index & creating a document
puts es.index index: 'tweets', type: 'tweet', id: 1, body: { text: 'Just do it!' }

# updating a document
puts es.index index: 'tweets', type: 'tweet', id: 1, body: { text: 'Just redo it!' }

# deleting a document
puts es.delete index: 'tweets', type: 'tweet', id: 1

# deleting an index
# puts es.get index: 'tweets'
#
# create mappings
#
# read mappings
