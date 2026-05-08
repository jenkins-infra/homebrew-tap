class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3044.v8d03a_6c3a_222".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3044.v8d03a_6c3a_222/jenkins-plugin-modernizer-3044.v8d03a_6c3a_222.jar"
    sha256 "290985f91169d0612de8100e50516898c7d29e98feecc70bc694321680e7499e"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3044.v8d03a_6c3a_222.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3044.v8d03a_6c3a_222.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
