class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2874.v03f14a_53d912".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2874.v03f14a_53d912/jenkins-plugin-modernizer-2874.v03f14a_53d912.jar"
    sha256 "daf51f6997098df789c03f417555ecb3396b4f1740ef4e3b1c6d3229e7b68b1c"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2874.v03f14a_53d912.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2874.v03f14a_53d912.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
