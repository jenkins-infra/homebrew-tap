class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1708.v72c0c335a_d61".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1708.v72c0c335a_d61/jenkins-plugin-modernizer-1708.v72c0c335a_d61.jar"
    sha256 "780ac0ff62e75a8d446c6bc08034de79fdfc9a859dd672ee83b1f43fc712dc41"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1708.v72c0c335a_d61.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1708.v72c0c335a_d61.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
