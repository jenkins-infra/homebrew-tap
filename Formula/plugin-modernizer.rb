class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1470.v08d56c533642".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1470.v08d56c533642/jenkins-plugin-modernizer-1470.v08d56c533642.jar"
    sha256 "7d2fc9eae86937c94a0131144b739c12bbe4ae22f2ab0f83a2e81b6bfefeca39"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1470.v08d56c533642.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1470.v08d56c533642.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
