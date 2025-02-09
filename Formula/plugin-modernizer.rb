class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1478.v40cb_ffa_961f3".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1478.v40cb_ffa_961f3/jenkins-plugin-modernizer-1478.v40cb_ffa_961f3.jar"
    sha256 "d319b375d18edd119b1ec4a88d072b6edaaa363e6b6d3759a828c5588941775a"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1478.v40cb_ffa_961f3.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1478.v40cb_ffa_961f3.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
