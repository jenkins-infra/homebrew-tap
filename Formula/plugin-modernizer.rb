class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "987.vc8377c911250".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/987.vc8377c911250/jenkins-plugin-modernizer-987.vc8377c911250.jar"
    sha256 "f434d244d9a2ff2cde86e5ee9b47c4cb9dfdad29219f7113ccba44b2ddb702fc"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-987.vc8377c911250.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-987.vc8377c911250.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
