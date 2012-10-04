# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-parameterized_snippets-extension"

Gem::Specification.new do |s|
  s.name        = "radiant-parameterized_snippets-extension"
  s.version     = RadiantParameterizedSnippetsExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = RadiantParameterizedSnippetsExtension::AUTHORS
  s.email       = RadiantParameterizedSnippetsExtension::EMAIL
  s.homepage    = RadiantParameterizedSnippetsExtension::URL
  s.summary     = RadiantParameterizedSnippetsExtension::SUMMARY
  s.description = RadiantParameterizedSnippetsExtension::DESCRIPTION

  ignores = if File.exist?('.gitignore')
    File.read('.gitignore').split("\n").inject([]) {|a,p| a + Dir[p] }
  else
    []
  end
  s.files         = Dir['**/*'] - ignores
  s.test_files    = Dir['test/**/*','spec/**/*','features/**/*'] - ignores
  s.require_paths = ["lib"]
end