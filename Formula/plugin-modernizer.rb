class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2520.v4e0b_b_b_d69a_da_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2520.v4e0b_b_b_d69a_da_/jenkins-plugin-modernizer-2520.v4e0b_b_b_d69a_da_.jar"
    sha256 "4c52f63e0d7eac098a71c5a765bf2a3622e6a522a5d311c15b5d4700d5e9db6d"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2520.v4e0b_b_b_d69a_da_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2520.v4e0b_b_b_d69a_da_.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
