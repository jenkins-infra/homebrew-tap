class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1799.ve87ce10f0ed2".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1799.ve87ce10f0ed2/jenkins-plugin-modernizer-1799.ve87ce10f0ed2.jar"
    sha256 "c5af87fc041bc4c98c00cc57a189030ad2b02f6f208984c5e5d7bfc3ea2dc71c"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1799.ve87ce10f0ed2.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1799.ve87ce10f0ed2.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
