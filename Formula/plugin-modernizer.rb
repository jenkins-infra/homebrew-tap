class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1585.vd759679ec3e1".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1585.vd759679ec3e1/jenkins-plugin-modernizer-1585.vd759679ec3e1.jar"
    sha256 "70f390d8a3066e7ba370aeaa6334604fdfe3fdc339e9ab583e6cd4046140eb04"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1585.vd759679ec3e1.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1585.vd759679ec3e1.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
