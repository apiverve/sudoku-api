Pod::Spec.new do |s|
  s.name             = 'APIVerveSudokuGenerator'
  s.version          = '1.2.3'
  s.summary          = 'Sudoku Generator creates 9x9 Sudoku puzzle grids across multiple difficulty settings, with empty cells marked as zeros.'
  s.description      = <<-'DESC'
Sudoku Generator creates 9x9 Sudoku puzzle grids across multiple difficulty settings, with empty cells marked as zeros. Paid plans add the full solution grid for validation or hints.

This iOS/macOS SDK provides a convenient way to access the Sudoku Generator from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/sudoku?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/sudoku-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveSudokuGenerator/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
