class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1756.v244758fe6046".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1756.v244758fe6046/jenkins-plugin-modernizer-1756.v244758fe6046.jar"
    sha256 "cfcfeee671b6f6f1eb839ad7ec46a9696fba0f638028c59cc1baf04644c198bc"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1756.v244758fe6046.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1756.v244758fe6046.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
