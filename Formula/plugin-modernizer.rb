class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1533.vb_cb_a_950e2b_6b_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1533.vb_cb_a_950e2b_6b_/jenkins-plugin-modernizer-1533.vb_cb_a_950e2b_6b_.jar"
    sha256 "cac5c301c286793f1356cf449a97ffe13aa8db314775057e0066555da23d1be4"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1533.vb_cb_a_950e2b_6b_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1533.vb_cb_a_950e2b_6b_.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
