class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "998.v2c52c98c2b_7c".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/998.v2c52c98c2b_7c/jenkins-plugin-modernizer-998.v2c52c98c2b_7c.jar"
    sha256 "820e48c2000b6d48f52be2c789aea8a960647aff4dad43b2360e15c90d6c1dbd"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-998.v2c52c98c2b_7c.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-998.v2c52c98c2b_7c.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
