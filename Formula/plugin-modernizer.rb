class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2577.v22942478c5fc".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2577.v22942478c5fc/jenkins-plugin-modernizer-2577.v22942478c5fc.jar"
    sha256 "7c4fe0c5136177d64bf2d87c9c92ec24abfcba6881f225fb3774fce91cb8191b"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2577.v22942478c5fc.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2577.v22942478c5fc.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
