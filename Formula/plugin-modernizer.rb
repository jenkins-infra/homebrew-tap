class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3012.v4793e5ca_368a_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3012.v4793e5ca_368a_/jenkins-plugin-modernizer-3012.v4793e5ca_368a_.jar"
    sha256 "4a7b1c96a438c6ed21d9449d81021a9d20499ed72b9c8b1618838806680823e3"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3012.v4793e5ca_368a_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3012.v4793e5ca_368a_.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
