# Generated with JReleaser 1.27.0 at 2026-11-27T12:48:41.407833556Z

class PluginModernizer < Formula
  desc "Plugin Modernizer Tool"
  homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
  url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3381.v372b_d2b_c25a_4/jenkins-plugin-modernizer-3381.v372b_d2b_c25a_4-osx-aarch_64", :using => :nounzip
  version "3381.v372b_d2b_c25a_4"
  sha256 "8652bfa17d6fcad10a88e0a750b00708783bc7eeca94b3b736013b163d79930e"
  license "MIT"


  def install
    bin.install "" => "jenkins-plugin-modernizer"
  end

  test do
    output = shell_output("#{bin}/jenkins-plugin-modernizer --version")
    assert_match "3381.v372b_d2b_c25a_4", output
  end
end
