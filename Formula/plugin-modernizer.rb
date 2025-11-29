class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2442.v5fcda_b_0517b_0".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2442.v5fcda_b_0517b_0/jenkins-plugin-modernizer-2442.v5fcda_b_0517b_0.jar"
    sha256 "bde5fe30da05d16aa5a1ea39e473af50d6e427986bea684d94b58ab1ef710eb8"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2442.v5fcda_b_0517b_0.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2442.v5fcda_b_0517b_0.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
