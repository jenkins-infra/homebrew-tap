class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2689.v970b_2b_4f9772".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2689.v970b_2b_4f9772/jenkins-plugin-modernizer-2689.v970b_2b_4f9772.jar"
    sha256 "22583411921990dbe7f54765e49975f5ee14487773fb003d832a02b1a06fe7ba"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2689.v970b_2b_4f9772.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2689.v970b_2b_4f9772.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
