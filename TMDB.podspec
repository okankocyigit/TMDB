Pod::Spec.new do |spec|

  spec.name         = "TMDB"
  spec.version      = "1.0.6"
  spec.summary      = "Swift library for TheMovieDB"
  spec.description  = "A fully-complete wrapper for themoviedb.org v3 API"
  spec.homepage     = "https://github.com/okankocyigit/TMDB.git"
  spec.license      = "MIT"
  spec.author       = { "Okan Koçyiğit" => "hasanokan@gmail.com" }
  spec.source       = { :git => "https://github.com/okankocyigit/TMDB.git", :tag => "#{spec.version}" }
  spec.source_files  = "TMDB/**/*.swift"
  spec.swift_version = '5.0'
  spec.ios.deployment_target  = '9.0'
  spec.osx.deployment_target  = '10.10'

end
