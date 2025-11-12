class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2405.v06f68a_94a_b_b_2".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2405.v06f68a_94a_b_b_2/jenkins-plugin-modernizer-2405.v06f68a_94a_b_b_2.jar"
    sha256 "50a3519a5b7cff3a35819588cc39e27aa6ab5694726caa2b00200dea23f141b7"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2405.v06f68a_94a_b_b_2.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2405.v06f68a_94a_b_b_2.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
