class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1595.v592f00ca_a_7d2".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1595.v592f00ca_a_7d2/jenkins-plugin-modernizer-1595.v592f00ca_a_7d2.jar"
    sha256 "eb91e70d955571fbf5048e55989ef5cb74e27f37f487079fae3ecb321c4fa895"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1595.v592f00ca_a_7d2.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1595.v592f00ca_a_7d2.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
