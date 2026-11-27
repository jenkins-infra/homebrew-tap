# Generated with JReleaser 1.27.0 at 2026-11-27T08:13:58.953504638Z

class PluginModernizerNative < Formula
  desc "Plugin Modernizer Tool"
  homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
  url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3377.v9ff1a_7e58158/jenkins-plugin-modernizer-3377.v9ff1a_7e58158-osx-aarch_64", :using => :nounzip
  version "3377.v9ff1a_7e58158"
  sha256 "79cf1bb8816b34cf36b65cf221098bc75f55861909ea8e9881b2aa956eebb2e7"
  license "MIT"


  def install
    bin.install "" => "jenkins-plugin-modernizer"
  end

  test do
    output = shell_output("#{bin}/jenkins-plugin-modernizer --version")
    assert_match "3377.v9ff1a_7e58158", output
  end
end
