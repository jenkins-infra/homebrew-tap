class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2653.v4f131496ed20".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2653.v4f131496ed20/jenkins-plugin-modernizer-2653.v4f131496ed20.jar"
    sha256 "b00c2b68adc5e2ef10bc593e17bf8bb159dc0a2d1241f2475a6b233c6c0ddc08"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2653.v4f131496ed20.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2653.v4f131496ed20.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
