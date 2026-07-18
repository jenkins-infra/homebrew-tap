class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3118.v22eb_b_250ecfc".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3118.v22eb_b_250ecfc/jenkins-plugin-modernizer-3118.v22eb_b_250ecfc.jar"
    sha256 "e68f3bb1dbfd00e9272878155bbf68a96011c4235ce917e85132d98e63ba6f39"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3118.v22eb_b_250ecfc.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3118.v22eb_b_250ecfc.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
