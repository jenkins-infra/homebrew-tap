class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1236.v8b_99973cfc98".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1236.v8b_99973cfc98/jenkins-plugin-modernizer-1236.v8b_99973cfc98.jar"
    sha256 "e1dd42eabda8b92eca3673e94a1e919763ff32e70a24f2973c050c8f593d1429"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1236.v8b_99973cfc98.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1236.v8b_99973cfc98.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
