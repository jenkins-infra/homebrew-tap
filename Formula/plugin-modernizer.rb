class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2148.v7e1b_1894465a_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2148.v7e1b_1894465a_/jenkins-plugin-modernizer-2148.v7e1b_1894465a_.jar"
    sha256 "78995d48a75a1434d1bb28c8eb8b7187d52e229c93b958c793373e575153db88"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2148.v7e1b_1894465a_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2148.v7e1b_1894465a_.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
