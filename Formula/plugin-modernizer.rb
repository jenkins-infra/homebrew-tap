class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1025.v6051110469dc".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1025.v6051110469dc/jenkins-plugin-modernizer-1025.v6051110469dc.jar"
    sha256 "2239aa679580bc8ad6f8ccd63891a63efce108ceefa9917b0a6d9e88761a1cd0"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1025.v6051110469dc.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1025.v6051110469dc.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
