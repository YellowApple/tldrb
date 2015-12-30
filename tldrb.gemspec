Gem::Specification.new do |gem|
  gem.name = 'tldrb'
  gem.version = '0.0.2'
  gem.license = 'MIT'
  gem.summary = "tldr client in Ruby"
  gem.description = "Ruby client for tldr " \
                    "(<https://github.com/tldr-pages/tldr>).  Implemented " \
                    "with the Ruby on Bales command-line app framework " \
                    "(<https://github.com/YellowApple/bales>)."
  gem.authors = ['Ryan S. Northrup']
  gem.email = ['rnorthrup@newleaders.com']
  gem.files = ['bin/tldrb', 'README.md', 'COPYING']
  gem.executables << 'tldrb'
  gem.homepage = "https://github.com/YellowApple/tldrb"
end
