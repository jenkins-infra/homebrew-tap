class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1878.v029d4eb_a_798d".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1878.v029d4eb_a_798d/jenkins-plugin-modernizer-1878.v029d4eb_a_798d.jar"
    sha256 "8b88f024f931507073cc462d203be56db20633c51a36499e525e152aeaf35b4c"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1878.v029d4eb_a_798d.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1878.v029d4eb_a_798d.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
