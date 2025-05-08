class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1786.v492175ed8e21".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1786.v492175ed8e21/jenkins-plugin-modernizer-1786.v492175ed8e21.jar"
    sha256 "1671d51c08279e7c98a90d3e43282e71758c8784ebe6b5bb3b21454fb3469258"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1786.v492175ed8e21.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1786.v492175ed8e21.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
