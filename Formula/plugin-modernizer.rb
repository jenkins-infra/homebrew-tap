class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1953.v337a_d9ca_d050".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1953.v337a_d9ca_d050/jenkins-plugin-modernizer-1953.v337a_d9ca_d050.jar"
    sha256 "559c0a26c9d530f0fa81cdea990e8deffe568ac7ccf894da31b75e9aa09f83c0"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1953.v337a_d9ca_d050.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1953.v337a_d9ca_d050.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
