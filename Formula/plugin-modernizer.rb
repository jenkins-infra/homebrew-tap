class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2832.v00a_ca_06348b_b_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2832.v00a_ca_06348b_b_/jenkins-plugin-modernizer-2832.v00a_ca_06348b_b_.jar"
    sha256 "43de5378c84b5082c3c6a6cbf0c486e29fa6a7b4fd95260c4e8c62ad0b832e60"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2832.v00a_ca_06348b_b_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2832.v00a_ca_06348b_b_.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
