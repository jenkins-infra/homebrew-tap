class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2613.v009d69c28251".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2613.v009d69c28251/jenkins-plugin-modernizer-2613.v009d69c28251.jar"
    sha256 "6208cc300b21d7a1ed94a3d9a82aa59dd9382764a39d6d014a0c45ac6513c8fc"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2613.v009d69c28251.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2613.v009d69c28251.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
