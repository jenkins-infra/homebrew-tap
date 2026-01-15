class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2651.v19cedf8368c2".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2651.v19cedf8368c2/jenkins-plugin-modernizer-2651.v19cedf8368c2.jar"
    sha256 "6cce7797c4bf7f8934d2fc276d628313a22a4bbc3acc350dfdd869bf63bcd2ca"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2651.v19cedf8368c2.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2651.v19cedf8368c2.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
