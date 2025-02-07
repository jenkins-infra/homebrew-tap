class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1462.v2d215848d87e".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1462.v2d215848d87e/jenkins-plugin-modernizer-1462.v2d215848d87e.jar"
    sha256 "467e7ef654a4b12d1b48e20e2a5ddd44e30b2123064a2e3efbebdcf845538e51"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1462.v2d215848d87e.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1462.v2d215848d87e.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
