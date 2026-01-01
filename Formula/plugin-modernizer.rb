class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2552.vb_fd9a_4fd15ee".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2552.vb_fd9a_4fd15ee/jenkins-plugin-modernizer-2552.vb_fd9a_4fd15ee.jar"
    sha256 "9233b4817c8bf4c47c98ffdd69a45a0634e29af215f2c9775cac69d2b0753fe5"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2552.vb_fd9a_4fd15ee.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2552.vb_fd9a_4fd15ee.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
