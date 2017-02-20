require File.expand_path('../lib/hidemyass/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Javier Saldana"]
  gem.email         = ["javier@tractical.com"]
  gem.description   = "Hide My Ass! fetches and connects to proxies at www.hidemyass.com"
  gem.summary       = "Hide My Ass! lets you connect anonymously, fetch proxies from hidemyass.com and try each one until a successful connection is made."
  gem.homepage      = "http://github.com/jassa/hidemyass"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "hidemyass"
  gem.require_paths = ["lib"]
  gem.version       = HideMyAss::VERSION

  gem.add_dependency "nokogiri", ">= 1.6"
  gem.add_dependency "typhoeus", ">= 0.6.1"
  gem.add_development_dependency "rspec", ">= 2.13.0"
end
