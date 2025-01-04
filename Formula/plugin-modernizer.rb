class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1145.v9716249cc13c".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1145.v9716249cc13c/jenkins-plugin-modernizer-1145.v9716249cc13c.jar"
    sha256 "40139386fb6f4b600b2f663ec6123d844625980c60a0aba69150d9e49ecb13ab"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1145.v9716249cc13c.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1145.v9716249cc13c.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
