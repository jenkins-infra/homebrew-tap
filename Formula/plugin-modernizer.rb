class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1773.vd72efda_03c96".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1773.vd72efda_03c96/jenkins-plugin-modernizer-1773.vd72efda_03c96.jar"
    sha256 "847c4e0223856176644bca72c637b05e05ac58db391e31687c046d543928d90b"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1773.vd72efda_03c96.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1773.vd72efda_03c96.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
