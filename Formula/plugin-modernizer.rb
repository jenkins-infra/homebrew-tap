class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2606.vee331c7e0a_f3".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2606.vee331c7e0a_f3/jenkins-plugin-modernizer-2606.vee331c7e0a_f3.jar"
    sha256 "5d3ba7be1035189a247ba4dbe2948c6ee9678c3b416116e0bf3dd07e2f334cbc"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2606.vee331c7e0a_f3.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2606.vee331c7e0a_f3.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
