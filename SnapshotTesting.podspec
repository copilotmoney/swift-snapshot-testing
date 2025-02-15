Pod::Spec.new do |s|
  s.name = "SnapshotTesting"
  s.version = "1.15.4"
  s.summary = "Tests that save and assert against reference data"

  s.description = <<-DESC
  Automatically record app data into test assertions. Snapshot tests capture
  the entirety of a data structure and cover far more surface area than a
  typical unit test.
  DESC

  s.homepage = "https://github.com/pointfreeco/swift-snapshot-testing"

  s.license = "MIT"

  s.authors = {
    "Stephen Celis" => "stephen@stephencelis.com",
    "Brandon Williams" => "mbw234@gmail.com"
  }
  s.social_media_url = "https://twitter.com/pointfreeco"

  s.source = {
    :git => "https://github.com/copilotmoney/swift-snapshot-testing.git",
    :tag => s.version
  }

  s.swift_versions = "5.0", "5.1.2", "5.2"

  s.ios.deployment_target = "15.0"
  s.osx.deployment_target = "10.12"

  s.frameworks = "XCTest"
  s.pod_target_xcconfig = {
    'ENABLE_BITCODE' => 'NO',
    'ENABLE_TESTING_SEARCH_PATHS' => 'YES',
  }

  s.source_files  = "Sources/SnapshotTesting", "Sources/SnapshotTesting/**/*.swift"
end
