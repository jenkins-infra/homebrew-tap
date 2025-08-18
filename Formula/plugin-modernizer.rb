class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2157.v0570b_b_6144c0".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2157.v0570b_b_6144c0/jenkins-plugin-modernizer-2157.v0570b_b_6144c0.jar"
    sha256 "da837fd898f2d2f5b90c94b6f49f22e5a7421b3c2c99c3304f82d07cbc4f557b"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2157.v0570b_b_6144c0.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2157.v0570b_b_6144c0.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
