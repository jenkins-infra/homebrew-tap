class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3255.v1b_e36cc2c10d".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3255.v1b_e36cc2c10d/jenkins-plugin-modernizer-3255.v1b_e36cc2c10d.jar"
    sha256 "e69ac90ffc49499cc3e084ee5d66a353db0802671357e4e6718c0c9e6fa4a79c"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3255.v1b_e36cc2c10d.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3255.v1b_e36cc2c10d.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
