class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2082.va_a_9e092a_f27d".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2082.va_a_9e092a_f27d/jenkins-plugin-modernizer-2082.va_a_9e092a_f27d.jar"
    sha256 "1add42c46c357185d2c68b6c531046aae09959b7ffc126431d51e2928707aba0"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2082.va_a_9e092a_f27d.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2082.va_a_9e092a_f27d.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
