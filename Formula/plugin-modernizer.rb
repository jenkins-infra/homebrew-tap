class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "931.v6437c7ddfccd".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/931.v6437c7ddfccd/jenkins-plugin-modernizer-931.v6437c7ddfccd.jar"
    sha256 "93c959495d629ed0a3340ec5587b47c28efb010dbec331370b5815b98fcb3a49"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-931.v6437c7ddfccd.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-931.v6437c7ddfccd.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
