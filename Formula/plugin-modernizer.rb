class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1438.vb_d2776d3b_755".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1438.vb_d2776d3b_755/jenkins-plugin-modernizer-1438.vb_d2776d3b_755.jar"
    sha256 "a7197a367cee6274bf2375ee8eab00caf93515f640897dfa94056093ea28bb7e"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1438.vb_d2776d3b_755.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1438.vb_d2776d3b_755.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
