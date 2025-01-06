class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1158.va_b_46a_2a_dde30".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1158.va_b_46a_2a_dde30/jenkins-plugin-modernizer-1158.va_b_46a_2a_dde30.jar"
    sha256 "d0773fe152349694071697e7dbad2cc08beb4ed8a63afc14bfd576ba79887f27"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1158.va_b_46a_2a_dde30.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1158.va_b_46a_2a_dde30.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
