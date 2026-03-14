class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2940.vb_fa_982eeb_2cd".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2940.vb_fa_982eeb_2cd/jenkins-plugin-modernizer-2940.vb_fa_982eeb_2cd.jar"
    sha256 "e5db9eafc98c091ebe42126ebd0e6b1badd04bdded0e1e246dbd7795e6beea7f"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2940.vb_fa_982eeb_2cd.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2940.vb_fa_982eeb_2cd.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
