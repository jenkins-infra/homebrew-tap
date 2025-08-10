class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2108.v28d076b_49a_11".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2108.v28d076b_49a_11/jenkins-plugin-modernizer-2108.v28d076b_49a_11.jar"
    sha256 "dac1aea98fbeac601ae6abdb8b467c8d779abb7e8eb88cd73959c165c0ac542e"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2108.v28d076b_49a_11.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2108.v28d076b_49a_11.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
