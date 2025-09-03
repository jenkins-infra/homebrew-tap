class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2199.v14a_a_d72ce9e4".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2199.v14a_a_d72ce9e4/jenkins-plugin-modernizer-2199.v14a_a_d72ce9e4.jar"
    sha256 "6e01d5743be7a2c6369ce504fb69eedbb7eba063b83bcad59e2b4153f78e1b94"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2199.v14a_a_d72ce9e4.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2199.v14a_a_d72ce9e4.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
