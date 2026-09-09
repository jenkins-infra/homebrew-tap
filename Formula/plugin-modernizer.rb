class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3174.vd10b_57d838d7".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3174.vd10b_57d838d7/jenkins-plugin-modernizer-3174.vd10b_57d838d7.jar"
    sha256 "f3833129b3e27fe60513cf80aef4644bbb8927cc700477bb4cc794c031394694"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3174.vd10b_57d838d7.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3174.vd10b_57d838d7.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
