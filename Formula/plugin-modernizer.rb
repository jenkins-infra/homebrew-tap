class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3035.v63c77b_92602f".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3035.v63c77b_92602f/jenkins-plugin-modernizer-3035.v63c77b_92602f.jar"
    sha256 "738a8bd86e5d44df32072a50d462a4a6048ff4529120f1695308248812890efb"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3035.v63c77b_92602f.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3035.v63c77b_92602f.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
