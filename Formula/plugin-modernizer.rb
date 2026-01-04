class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2570.vb_5e465280177".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2570.vb_5e465280177/jenkins-plugin-modernizer-2570.vb_5e465280177.jar"
    sha256 "bc5d7c9a4633bcf1aedc4b7a0b9ec332027d595b1de86d59ee8dfbe890cf5b71"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2570.vb_5e465280177.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2570.vb_5e465280177.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
