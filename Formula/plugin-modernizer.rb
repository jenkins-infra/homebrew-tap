class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1776.vb_3299c07a_d23".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1776.vb_3299c07a_d23/jenkins-plugin-modernizer-1776.vb_3299c07a_d23.jar"
    sha256 "6f90e94c46572eeb3ea9dd313347e94bbeb9afbf19b9a5b30a5248d9abcacf11"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1776.vb_3299c07a_d23.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1776.vb_3299c07a_d23.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
