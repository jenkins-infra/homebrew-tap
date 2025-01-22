class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1311.v2f1a_2e5532ec".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1311.v2f1a_2e5532ec/jenkins-plugin-modernizer-1311.v2f1a_2e5532ec.jar"
    sha256 "42e73ac5ef2ea77654f37ae47f0d18501bc179a15675f61a6e602eee076cb315"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1311.v2f1a_2e5532ec.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1311.v2f1a_2e5532ec.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
