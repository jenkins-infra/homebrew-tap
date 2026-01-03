class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2563.vcc7c0740a_4b_d".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2563.vcc7c0740a_4b_d/jenkins-plugin-modernizer-2563.vcc7c0740a_4b_d.jar"
    sha256 "0a549dc8a8a4a62159d1f1b1ffdf70cded8aff6ea8321cc8b9f4bd57364f8d15"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2563.vcc7c0740a_4b_d.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2563.vcc7c0740a_4b_d.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
