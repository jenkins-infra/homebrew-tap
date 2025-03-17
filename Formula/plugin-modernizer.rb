class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1599.va_c04ea_b_4d450".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1599.va_c04ea_b_4d450/jenkins-plugin-modernizer-1599.va_c04ea_b_4d450.jar"
    sha256 "895ea624684c5a9c6101d98a33fb24954bc55a2e669c0a2cb192dcc95643aca7"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1599.va_c04ea_b_4d450.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1599.va_c04ea_b_4d450.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
