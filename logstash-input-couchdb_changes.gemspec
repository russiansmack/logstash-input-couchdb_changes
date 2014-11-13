Gem::Specification.new do |s|

  s.name            = 'logstash-input-couchdb_changes'
  s.version         = '0.1.0'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = "This input captures the _changes stream from a CouchDB instance"
  s.description     = "This input captures the _changes stream from a CouchDB instance"
  s.authors         = ["Elasticsearch"]
  s.email           = 'aaron.mildenstein@elasticsearch.com'
  s.homepage        = "http://logstash.net/"
  s.require_paths = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)+::Dir.glob('vendor/*')

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "group" => "input" }

  # Gem dependencies
  s.add_runtime_dependency 'logstash', '>= 1.4.0', '< 2.0.0'
  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency 'ftw', '>= 0.0.41'
  s.add_runtime_dependency 'json'

  s.add_development_dependency 'ftw', '>= 0.0.41'

end
