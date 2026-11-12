class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3305.v25f9a_966fc07".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3305.v25f9a_966fc07/jenkins-plugin-modernizer-3305.v25f9a_966fc07.jar"
    sha256 "d0c8d6099b824e650d209dc8b6ed5fbb7f474518545f9456e9513a95a998af60"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3305.v25f9a_966fc07.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3305.v25f9a_966fc07.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
