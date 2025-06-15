class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1905.v0f2e3603b_5f0".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1905.v0f2e3603b_5f0/jenkins-plugin-modernizer-1905.v0f2e3603b_5f0.jar"
    sha256 "fea30d1489f26f4177a863ea8df10642375a0b5675b73f435c86f55f1e45fe21"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1905.v0f2e3603b_5f0.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1905.v0f2e3603b_5f0.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
