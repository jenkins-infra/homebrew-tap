class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2997.va_a_9f5fe806ce".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2997.va_a_9f5fe806ce/jenkins-plugin-modernizer-2997.va_a_9f5fe806ce.jar"
    sha256 "84796426371cb7d34d1a8eebc29c785027d77e520110e2da58beb44f63192c53"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2997.va_a_9f5fe806ce.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2997.va_a_9f5fe806ce.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
