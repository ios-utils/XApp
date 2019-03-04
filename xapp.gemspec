Gem::Specification.new do |s|
    s.name = 'xapp'
    s.version = '0.2.0'
    s.email = 'reece@hubr.io'
    s.authors = ['Reece Como']
    s.date = %q{2019-01-26}
    s.summary = %q{xapp is a tool to help you create great iOS projects.}

    s.files         = `git ls-files`.split($/)
    s.executables   << 'xapp'

    s.require_paths = ["lib"]
  end