class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2979.v44b_07942e3c0".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2979.v44b_07942e3c0/jenkins-plugin-modernizer-2979.v44b_07942e3c0.jar"
    sha256 "e9bd9c3d195b7bf178f0bb60a742ee3dab388666242bdb20a1c788ab1559110f"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2979.v44b_07942e3c0.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2979.v44b_07942e3c0.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
