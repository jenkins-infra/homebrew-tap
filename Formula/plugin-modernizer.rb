class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "933.vb_2713b_667f16".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/933.vb_2713b_667f16/jenkins-plugin-modernizer-933.vb_2713b_667f16.jar"
    sha256 "0e9f730d87dac8c15e813dda7e45e20f052c375ac974d21467b196b4808640ff"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-933.vb_2713b_667f16.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-933.vb_2713b_667f16.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
