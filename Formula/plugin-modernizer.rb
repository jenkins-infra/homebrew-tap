class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1456.v302b_4d21a_e64".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1456.v302b_4d21a_e64/jenkins-plugin-modernizer-1456.v302b_4d21a_e64.jar"
    sha256 "a2d3b9efff292ecf6f4e6cb9a32d23902b771e2bf7c2801004b5f1f5f27b2df7"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1456.v302b_4d21a_e64.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1456.v302b_4d21a_e64.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
