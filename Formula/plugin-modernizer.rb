class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "946.v6305e7e688b_4".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/946.v6305e7e688b_4/jenkins-plugin-modernizer-946.v6305e7e688b_4.jar"
    sha256 "c07dcd0b8a13602ee3d7ed2e984150dc0d261048227e6a420d9adc336a8b0bab"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-946.v6305e7e688b_4.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-946.v6305e7e688b_4.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
