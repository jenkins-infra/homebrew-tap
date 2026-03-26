class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2966.v32e57de5e2fb_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2966.v32e57de5e2fb_/jenkins-plugin-modernizer-2966.v32e57de5e2fb_.jar"
    sha256 "81d17c98592b4430ccf50a14adea9b48ce4935d60914137ac17dbd38c299daa4"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2966.v32e57de5e2fb_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2966.v32e57de5e2fb_.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
