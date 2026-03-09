class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2912.v51b_54b_cc5932".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2912.v51b_54b_cc5932/jenkins-plugin-modernizer-2912.v51b_54b_cc5932.jar"
    sha256 "3b291d618eaac3728a668b3c798b980de8d085dcf493fc557bd4508d59312a11"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2912.v51b_54b_cc5932.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2912.v51b_54b_cc5932.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
