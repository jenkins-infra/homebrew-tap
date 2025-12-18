class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2510.v0a_c82f972c92".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2510.v0a_c82f972c92/jenkins-plugin-modernizer-2510.v0a_c82f972c92.jar"
    sha256 "b3ef303800ca5bc8fb5dc27127c862c28b12ce8d3a8701b562bf1a6c89e63ee6"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2510.v0a_c82f972c92.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2510.v0a_c82f972c92.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
