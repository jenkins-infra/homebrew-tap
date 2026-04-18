class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3011.vde545422894a_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3011.vde545422894a_/jenkins-plugin-modernizer-3011.vde545422894a_.jar"
    sha256 "71c44963cc4a8c904e8ede802547ad06f98410ed6334fd5c1698ea1987df4ee2"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3011.vde545422894a_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3011.vde545422894a_.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
