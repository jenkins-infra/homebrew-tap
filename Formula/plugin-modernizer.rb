class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3180.v25d5dd517783".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3180.v25d5dd517783/jenkins-plugin-modernizer-3180.v25d5dd517783.jar"
    sha256 "8acbe82ac617c7573b39c5ad7a7ae3ce9e5dcc2fca365ab9ec0907143faa9ec9"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3180.v25d5dd517783.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3180.v25d5dd517783.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
