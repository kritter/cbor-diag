Gem::Specification.new do |s|
  s.name = "cbor-diag"
  s.version = "0.1.0"
  s.summary = "CBOR (Concise Binary Object Representation) diagnostic notation"
  s.description = %q{cbor-diag implements diagnostic notation for CBOR, RFC 7049}
  s.author = "Carsten Bormann"
  s.email = "cabo@tzi.org"
  s.license = "Apache 2.0"
  s.homepage = "http://cbor.io/"
  s.has_rdoc = false
  # s.files = `git ls-files`.split("\n") << "lib/cbor-diag-parser.rb"
  # s.test_files = `git ls-files -- {test,spec}/*`.split("\n")
  s.files = Dir['lib/**/*.rb'] + %w(cbor-diag.gemspec) + Dir['bin/**/*.rb']
  s.executables = Dir['bin/**/*.rb'].map {|x| File.basename(x)}
  s.required_ruby_version = '>= 1.9.2'

  s.require_paths = ["lib"]

  s.add_development_dependency 'bundler', '~>1'
  s.add_dependency 'treetop', '~>1'
  s.add_dependency 'json', '~>1'
end