class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2812.ve87c7a_55c066".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2812.ve87c7a_55c066/jenkins-plugin-modernizer-2812.ve87c7a_55c066.jar"
    sha256 "ff3d2066e490f0d864fc8bbd90d9278cdbd1b75e8f0a45a081011b58f2f9c4f8"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2812.ve87c7a_55c066.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2812.ve87c7a_55c066.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
