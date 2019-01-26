Gem::Specification.new do |s|
    s.name = 'xapp'
    s.version = '0.1.0'
    s.email = 'reece@hubr.io'
    s.date = %q{2019-01-26}
    s.summary = %q{xapp is a helper tool for iOS dev}

    s.files         = `git ls-files`.split($/)
    s.executables   << 'xapp'

    s.require_paths = ["lib"]
  end