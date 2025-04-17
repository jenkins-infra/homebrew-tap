class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1731.v399008f60c58".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1731.v399008f60c58/jenkins-plugin-modernizer-1731.v399008f60c58.jar"
    sha256 "0b32aba30a44c49b78148701baccd88699590b21da6b7875338501824e7f3e1f"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1731.v399008f60c58.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1731.v399008f60c58.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
